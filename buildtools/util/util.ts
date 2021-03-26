import sha1 from "sha1";
import { FileDef } from "../types/fileDef";
import fs from "fs";
import buildConfig from "../buildConfig";
import upath from "upath";
import requestretry from "requestretry";
import http from "http";
import { compareBufferToHashDef } from "./hashes";
import { execSync } from "child_process";
import { ModpackManifestFile } from "../types/modpackManifest";
import { CurseForgeModInfo } from "../types/curseForge";
import { fetchProject, fetchProjectsBulk } from "./curseForgeAPI";
import Bluebird from "bluebird";

const LIBRARY_REG = /^(.+?):(.+?):(.+?)$/;

/**
 * Parses the library name into path following the standard package naming convention.
 *
 * Turns `package:name:version` into `package/name/version/name-version`.
 */
export const libraryToPath = (library: string): string => {
	const parsedLibrary = LIBRARY_REG.exec(library);
	if (parsedLibrary) {
		const pkg = parsedLibrary[1].replace(/\./g, "/");
		const name = parsedLibrary[2];
		const version = parsedLibrary[3];

		const newURL = `${pkg}/${name}/${version}/${name}-${version}`;

		return newURL;
	}
};

/**
 * Checks if given environmental variables are set. Throws otherwise.
 */
export const checkEnvironmentalVariables = (vars: string[]): void => {
	vars.forEach((vari) => {
		if (!process.env[vari] || process.env[vari] == "") {
			throw new Error(`Environmental variable ${vari} is unset.`);
		}
	});
};

export enum RetrievedFileDefReason {
	Downloaded,
	CacheHit,
}

export interface RetrievedFileDef {
	reason: RetrievedFileDefReason;
	contents: Buffer;
}

export async function downloadOrRetrieveFileDef(fileDef: FileDef): Promise<RetrievedFileDef> {
	const fileNameSha = sha1(fileDef.url);

	const cachedFilePath = upath.join(buildConfig.downloaderCacheDirectory, fileNameSha);
	if (fs.existsSync(cachedFilePath)) {
		const file = await fs.promises.readFile(cachedFilePath);

		if (file.length !== 0) {
			const rFileDef = {
				reason: RetrievedFileDefReason.CacheHit,
				contents: file,
			};

			// Check hashes.
			if (fileDef.hashes) {
				if (
					fileDef.hashes.every((hashDef) => {
						return compareBufferToHashDef(file, hashDef);
					})
				) {
					return rFileDef;
				}
			} else {
				return rFileDef;
			}
		}
	}

	if (!fs.existsSync(buildConfig.downloaderCacheDirectory)) {
		await fs.promises.mkdir(buildConfig.downloaderCacheDirectory, { recursive: true });
	}

	const handle = await fs.promises.open(cachedFilePath, "w");

	let hashFailed = false;
	const retryStrategy = (err: Error, response: http.IncomingMessage, body: unknown) => {
		// Verify hashes.
		if (!err && fileDef.hashes && body) {
			const success = fileDef.hashes.every((hashDef) => {
				return compareBufferToHashDef(body as Buffer, hashDef);
			});

			if (!success) {
				if (hashFailed) {
					throw new Error(`Couldn't verify checksums of ${upath.basename(fileDef.url)}`);
				}

				hashFailed = true;
				return true;
			}
		}
		return requestretry.RetryStrategies.HTTPOrNetworkError(err, response, body);
	};

	const data: Buffer = Buffer.from(
		await requestretry({
			url: fileDef.url,
			fullResponse: false,
			encoding: null,
			retryStrategy: retryStrategy,
		}),
	);

	await handle.write(data);
	await handle.close();

	return {
		reason: RetrievedFileDefReason.Downloaded,
		contents: data,
	};
}

/**
 * Returns artifact name body depending on environment variables.
 * Mostly intended to be called by CI/CD.
 */
export function makeArtifactNameBody(baseName: string): string {
	// If the tag is provided by CI, simply just glue it to the base name.
	if (process.env.GITHUB_TAG) {
		return `${baseName}-${process.env.GITHUB_TAG}`;
	}
	// If SHA is provided and the build isn't tagged, append both the branch and short SHA.
	else if (process.env.GITHUB_SHA && process.env.GITHUB_REF && process.env.GITHUB_REF.startsWith("refs/heads/")) {
		const shortCommit = process.env.GITHUB_SHA.substr(0, 7);
		const branch = /refs\/heads\/(.+)/.exec(process.env.GITHUB_REF);
		return `${baseName}-${branch[1]}-${shortCommit}`;
	} else {
		return baseName;
	}
}

/**
 * Fetches the last tag known to Git using the current branch.
 * @param {string | nil} before Tag to get the tag before.
 * @returns string Git tag.
 * @throws
 */
export function getLastGitTag(args?: string): string {
	if (args) {
		args = `"${args}^"`;
	}

	return execSync(`git describe --abbrev=0 --tags ${args || ""}`)
		.toString()
		.trim();
}

/**
 * Generates a changelog based on the two provided Git refs.
 * @param {string} since Lower boundary Git ref.
 * @param {string} to Upper boundary Git ref.
 * @param {string[]} dirs Optional scopes.
 */
export function getChangeLog(since = "HEAD", to = "HEAD", dirs: string[] = undefined): string {
	const command = [
		"git log",
		"--no-merges",
		'--date="format:%d %b %Y"',
		'--pretty="* %s - **%an** (%ad)"',
		`${since}..${to}`,
	];

	if (dirs) {
		command.push("--", dirs.join(" -- "));
	}

	return execSync(command.join(" ")).toString().trim();
}

/**
 * Generates a changelog based on the two provided Git refs.
 * @param {string} since Lower boundary Git ref.
 * @param {string} to Upper boundary Git ref.
 * @param {string[]} dirs Optional scopes.
 */
export function getFileAtRevision(path: string, revision = "HEAD"): string {
	return execSync(`git show ${revision}:"${path}"`).toString().trim();
}

export interface ManifestFileListComparisonResult {
	removed: CurseForgeModInfo[];
	modified: CurseForgeModInfo[];
	added: CurseForgeModInfo[];
}

export async function compareAndExpandManifestFileLists(
	oldFiles: ModpackManifestFile[],
	newFiles: ModpackManifestFile[],
): Promise<ManifestFileListComparisonResult> {
	// Map inputs for efficient joining.
	const oldFileMap: { [key: number]: ModpackManifestFile } = oldFiles.reduce(
		(map, file) => ((map[file.projectID] = file), map),
		{},
	);
	const newFileMap: { [key: number]: ModpackManifestFile } = newFiles.reduce(
		(map, file) => ((map[file.projectID] = file), map),
		{},
	);

	const removed: CurseForgeModInfo[] = [],
		modified: CurseForgeModInfo[] = [],
		added: CurseForgeModInfo[] = [];

	// Create a distinct map of project IDs.
	const projectIDs = Array.from(new Set([...oldFiles.map((f) => f.projectID), ...newFiles.map((f) => f.projectID)]));

	// Fetch projects in bulk and discard the result.
	// Future calls to fetchProject() and fetchProjectsBulk() will hit the cache.
	fetchProjectsBulk(projectIDs);

	await Bluebird.map(
		projectIDs,
		async (projectID) => {
			const oldFileInfo = oldFileMap[projectID];
			const newFileInfo = newFileMap[projectID];

			// Doesn't exist in new, but exists in old. Removed. Left outer join.
			if (!newFileInfo && oldFileInfo) {
				removed.push(await fetchProject(oldFileInfo.projectID));
			}
			// Doesn't exist in old, but exists in new. Added. Right outer join.
			else if (newFileMap[projectID] && !oldFileMap[projectID]) {
				added.push(await fetchProject(newFileInfo.projectID));
			}
			// Exists in both. Modified? Inner join.
			else if (oldFileInfo.fileID != newFileInfo.fileID) {
				modified.push(await fetchProject(newFileInfo.projectID));
			}
		},
		{ concurrency: buildConfig.downloaderConcurrency },
	);

	return {
		removed: removed,
		modified: modified,
		added: added,
	};
}
