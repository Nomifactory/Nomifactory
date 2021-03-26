import fs from "fs";
import gulp from "gulp";
import upath from "upath";
import buildConfig from "../../buildConfig";
import { modpackManifest, overridesFolder, sharedDestDirectory, tempDirectory } from "../../globals";
import del from "del";
import { FileDef } from "../../types/fileDef";
import Bluebird from "bluebird";
import {
	compareAndExpandManifestFileLists,
	downloadOrRetrieveFileDef,
	getChangeLog,
	getFileAtRevision,
	getLastGitTag,
} from "../../util/util";

async function sharedCleanUp() {
	await del(upath.join(sharedDestDirectory, "*"), { force: true });
	await del(upath.join(tempDirectory, "*"), { force: true });
}

/**
 * Checks and creates all necessary directories so we can build everything safely.
 */
async function createSharedDirs() {
	if (!fs.existsSync(sharedDestDirectory)) {
		await fs.promises.mkdir(sharedDestDirectory, { recursive: true });
	}

	if (!fs.existsSync(tempDirectory)) {
		await fs.promises.mkdir(tempDirectory, { recursive: true });
	}
}

/**
 * Copies modpack overrides.
 */
async function copyOverrides() {
	await new Promise((resolve) => {
		gulp
			.src(upath.join(buildConfig.buildSourceDirectory, overridesFolder, "**/*"))
			.pipe(gulp.dest(upath.join(sharedDestDirectory, overridesFolder)))
			.on("end", resolve);
	});
}

/**
 * Fetch external dependencies and remove the field from the manifest file.
 */
async function fetchExternalDependencies() {
	const dependencies = modpackManifest.externalDependencies;
	if (dependencies) {
		const destDirectory = upath.join(sharedDestDirectory, overridesFolder, "mods");

		if (!fs.existsSync(destDirectory)) {
			await fs.promises.mkdir(destDirectory, { recursive: true });
		}

		// Map dependencies to FileDefs.
		const depDefs: FileDef[] = dependencies.map((dep) => {
			return {
				url: dep.url,
				hashes: [
					{
						hashes: [dep.sha],
						id: "sha1",
					},
				],
			};
		});

		await Bluebird.map(
			depDefs,
			async (depDef) => {
				const file = (await downloadOrRetrieveFileDef(depDef)).contents;

				await fs.promises.writeFile(upath.join(destDirectory, upath.basename(depDef.url)), file);
			},
			{ concurrency: buildConfig.downloaderConcurrency },
		);

		delete modpackManifest.externalDependencies;
	}
}

/**
 * Generates a changelog based on environmental variables.
 */
async function makeChangelog() {
	let since = getLastGitTag(),
		to: string;

	// If this is a tagged build, fetch the tag before last.
	if (process.env.GITHUB_TAG) {
		since = getLastGitTag(process.env.GITHUB_TAG);
		to = process.env.GITHUB_TAG;
	}

	const old = JSON.parse(getFileAtRevision("manifest.json", since)) as ModpackManifest;
	const current = modpackManifest;
	const commitList = getChangeLog(since, to, [upath.join("..", modpackManifest.overrides)]);

	const builder: string[] = [];

	// Push the title.
	builder.push(`# Changes since ${since}`);

	const comparisonResult = await compareAndExpandManifestFileLists(old.files, current.files);

	// Push mod update blocks.
	[
		{
			name: "## New mods",
			list: comparisonResult.added,
		},
		{
			name: "## Updated mods",
			list: comparisonResult.modified,
		},
		{
			name: "## Removed mods",
			list: comparisonResult.removed,
		},
	].forEach((block) => {
		builder.push("");
		builder.push(block.name);
		builder.push(
			...block.list
				// Yeet invalid project names.
				.filter((project) => !/project-\d*/.test(project.name))
				.sort((a, b) => a.name.localeCompare(b.name))
				.map((project) => `* ${project.name}`),
		);
	});

	// Push the changelog itself.
	if (commitList) {
		builder.push("");
		builder.push("## Commits");
		builder.push(commitList);
	}

	return fs.promises.writeFile(upath.join(sharedDestDirectory, "CHANGELOG.md"), builder.join("\n"));
}

import transforms from "./transforms";
import { ModpackManifest } from "../../types/modpackManifest";
export default gulp.series(
	sharedCleanUp,
	createSharedDirs,
	copyOverrides,
	makeChangelog,
	fetchExternalDependencies,
	gulp.parallel(transforms),
);
