import fs from "fs";
import gulp from "gulp";
import upath from "upath";
import buildConfig from "../../buildConfig";
import { modpackManifest, overridesFolder, sharedDestDirectory } from "../../globals";
import del from "del";
import { FileDef } from "../../types/fileDef";
import Bluebird from "bluebird";
import { downloadOrRetrieveFileDef } from "../../util/util";

async function cleanUp() {
	await del(upath.join(buildConfig.buildDestinationDirectory, "*"), { force: true });
}

/**
 * Checks and creates all necessary directories so we can build everything safely.
 */
async function createSharedDirs() {
	if (!fs.existsSync(sharedDestDirectory)) {
		await fs.promises.mkdir(sharedDestDirectory, { recursive: true });
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
				const file = await downloadOrRetrieveFileDef(depDef);

				await fs.promises.writeFile(upath.join(destDirectory, upath.basename(depDef.url)), file);
			},
			{ concurrency: buildConfig.downloaderConcurrency },
		);

		delete modpackManifest.externalDependencies;
	}
}

import transforms from "./transforms";
export default gulp.series(
	cleanUp,
	createSharedDirs,
	copyOverrides,
	fetchExternalDependencies,
	gulp.parallel(transforms),
);
