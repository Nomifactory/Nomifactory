import fs from "fs";
import gulp from "gulp";
import upath from "upath";
import buildConfig from "../../buildConfig";
import { modpackManifest, overridesFolder, sharedDestDirectory, tempDirectory } from "../../globals";
import del from "del";
import { FileDef } from "../../types/fileDef";
import Bluebird from "bluebird";
import { downloadOrRetrieveFileDef, getChangeLog, getLastGitTag } from "../../util/util";

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
	let since = getLastGitTag();

	// Back-compat.
	if (since == "latest-dev-preview") {
		since = getLastGitTag(since);
	}

	// If this is a tagged build, fetch the tag before last.
	if (process.env.GITHUB_TAG) {
		since = getLastGitTag(process.env.GITHUB_TAG);
	}

	const body = getChangeLog(since, "HEAD", ["../manifest.json", upath.join("..", modpackManifest.overrides)]);

	let changelog;
	if (body) {
		changelog = `Changes since ${since}:\n\n${body}`;
	} else {
		changelog = `There haven't been any changes since ${since}.`;
	}

	return fs.promises.writeFile(upath.join(sharedDestDirectory, "CHANGELOG.md"), changelog);
}

import transforms from "./transforms";
export default gulp.series(
	sharedCleanUp,
	createSharedDirs,
	copyOverrides,
	makeChangelog,
	fetchExternalDependencies,
	gulp.parallel(transforms),
);
