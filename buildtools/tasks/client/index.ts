import gulp from "gulp";
import { clientDestDirectory, modpackManifest, overridesFolder, sharedDestDirectory } from "../../globals";
import fs from "fs";
import upath from "upath";
import buildConfig from "../../buildConfig";
import { fetchProjectsBulk } from "../../util/curseForgeAPI";
import log from "fancy-log";
import zip from "gulp-zip";
import merge from "merge-stream";
import rename from "gulp-rename";

/**
 * Checks and creates all necessary directories so we can build the client safely.
 */
async function createClientDirs() {
	if (!fs.existsSync(clientDestDirectory)) {
		await fs.promises.mkdir(clientDestDirectory, { recursive: true });
	}
}

/**
 * Exports the modpack manifest.
 */
async function exportModpackManifest() {
	const manifestPath = upath.join(clientDestDirectory, "manifest.json");
	await fs.promises.writeFile(manifestPath, JSON.stringify(modpackManifest, null, "  "));
}

/**
 * Copies the license file.
 */
async function copyClientLicense() {
	await await new Promise((resolve) => {
		gulp.src("../LICENSE.md").pipe(gulp.dest(clientDestDirectory)).on("end", resolve);
	});
}

/**
 * Copies modpack overrides.
 */
async function copyClientOverrides() {
	const baseDir = upath.join(sharedDestDirectory, overridesFolder);
	const globs = buildConfig.copyOverridesClientGlobs.map((glob) => upath.join(baseDir, glob));

	await new Promise((resolve) => {
		gulp.src(globs).pipe(gulp.dest(clientDestDirectory)).on("end", resolve);
	});
}

/**
 * Fetches mod links and builds modlist.html.
 */
async function fetchModList() {
	log("Fetching mod infos...");

	// Fetch project/addon infos.
	const modInfos = await fetchProjectsBulk(modpackManifest.files.map((mod) => mod.projectID));

	log(`Fetched ${modInfos.length} mod infos`);

	// Create modlist.html
	const output = [
		"<ul>\r\n",
		...modInfos
			// Sort mods by their project IDs.
			.sort((a, b) => a.id - b.id)

			// Create a <li> node for each mod.
			.map((modInfo) => {
				return `\t<li><a href="${modInfo.websiteUrl}">${modInfo.name || "Unknown"} (by ${modInfo.authors
					.map((author) => author.name || "Someone")
					.join(", ")})</a></li>\r\n`;
			}),
		"</ul>",
	];

	await fs.promises.writeFile(upath.join(clientDestDirectory, "modlist.html"), output.join(""));
}

/**
 * Zips the client directory.
 */
async function zipClient() {
	return await new Promise((resolve) => {
		gulp
			.src(upath.join(clientDestDirectory, "**"), { nodir: true, base: clientDestDirectory })
			.pipe(zip("client.zip"))
			.pipe(gulp.dest(buildConfig.buildDestinationDirectory))
			.on("end", resolve);
	});
}

/**
 * Zips the language files.
 */
async function zipLang() {
	const resourcesPath = upath.join(sharedDestDirectory, overridesFolder, "resources");

	const opts = { nodir: true, base: resourcesPath };
	const streams = [
		gulp.src(upath.join(resourcesPath, "pack.mcmeta"), opts),
		gulp.src(upath.join(resourcesPath, "**/*.lang"), opts).pipe(
			rename((f) => {
				f.dirname = upath.join("assets", f.dirname);
			}),
		),
	];

	return await new Promise((resolve) => {
		merge(...streams)
			.pipe(zip("lang.zip"))
			.pipe(gulp.dest(buildConfig.buildDestinationDirectory))
			.on("end", resolve);
	});
}

export default gulp.series(
	createClientDirs,
	gulp.parallel(exportModpackManifest, copyClientLicense, copyClientOverrides, zipLang, fetchModList),
	zipClient,
);
