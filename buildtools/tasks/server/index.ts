import upath from "upath";
import unzip from "unzipper";
import through from "through2";
import request from "requestretry";
import mustache from "mustache";
import log from "fancy-log";
import gulp, { src, dest } from "gulp";
import fs from "fs";
import buildConfig from "../../buildConfig";
import Bluebird from "bluebird";
import { VersionsManifest } from "../../types/versionsManifest";
import { ForgeProfile } from "../../types/forgeProfile";
import { FileDef } from "../../types/fileDef";
import { fetchFileInfo } from "../../util/curseForgeAPI";
import { downloadOrRetrieveFileDef, libraryToPath, RetrievedFileDefReason } from "../../util/util";
import {
	modpackManifest,
	overridesFolder,
	serverDestDirectory,
	sharedDestDirectory,
	tempDirectory,
} from "../../globals";

const MOJANG_MAVEN = "https://libraries.minecraft.net/";
const FORGE_VERSION_REG = /forge-(.+)/;
const FORGE_MAVEN = "https://files.minecraftforge.net/maven/";
const LAUNCHERMETA_VERSION_MANIFEST = "https://launchermeta.mojang.com/mc/game/version_manifest.json";

let g_forgeJar;

/**
 * Checks and creates all necessary directories so we can build the client safely.
 */
async function createServerDirs() {
	if (!fs.existsSync(serverDestDirectory)) {
		await fs.promises.mkdir(serverDestDirectory, { recursive: true });
	}
}

/**
 * Download the Forge jar.
 *
 * Extract, parse the profile data and download required libraries.
 */
async function downloadForge() {
	const minecraft = modpackManifest.minecraft;

	/**
	 * Break down the Forge version defined in manifest.json.
	 */
	const parsedForgeEntry = FORGE_VERSION_REG.exec(
		(minecraft.modLoaders.find((x) => x.id && x.id.indexOf("forge") != -1) || {}).id || "",
	);

	if (!parsedForgeEntry) {
		throw new Error("Malformed Forge version in manifest.json.");
	}

	/**
	 * Transform Forge version into Maven library path.
	 */
	const forgeMavenLibrary = `net.minecraftforge:forge:${minecraft.version}-${parsedForgeEntry[1]}`;
	const forgeInstallerPath = libraryToPath(forgeMavenLibrary) + "-installer.jar";
	const localForgePath = upath.join(tempDirectory, upath.basename(forgeInstallerPath));

	/**
	 * Fetch the Forge installer
	 */
	const forgeJar = (
		await downloadOrRetrieveFileDef({
			url: FORGE_MAVEN + forgeInstallerPath,
		})
	).contents;
	await fs.writeFileSync(localForgePath, forgeJar);

	/**
	 * Extract the installer into temp folder.
	 */
	log("Extracting the Forge installer...");

	await new Promise((resolve) => {
		fs.createReadStream(localForgePath)
			.pipe(unzip.Extract({ path: upath.join(tempDirectory, "forge") }))
			.on("close", resolve);
	});

	/**
	 * Parse the profile manifest.
	 */
	log("Reading the manifest file...");

	const forgeProfile: ForgeProfile = JSON.parse(
		fs.readFileSync(upath.join(tempDirectory, "forge", "install_profile.json")).toString(),
	);

	if (!(forgeProfile && forgeProfile.versionInfo && forgeProfile.versionInfo.libraries)) {
		throw new Error("Malformed Forge manifest file.");
	}

	const forgeUniversalPath = upath.basename(libraryToPath(forgeMavenLibrary) + "-universal.jar");

	/**
	 * Move the universal jar into the dist folder.
	 */
	log("Moving the Forge jar...");
	fs.renameSync(
		upath.join(tempDirectory, "forge", forgeUniversalPath),
		upath.join(serverDestDirectory, forgeUniversalPath),
	);

	/**
	 * Save the universal jar file name for later.
	 *
	 * We will need it to process launchscripts.
	 */
	g_forgeJar = forgeUniversalPath;

	/**
	 * Finally, fetch libraries.
	 */
	const libraries = forgeProfile.versionInfo.libraries.filter((x) => x.serverreq);
	log(`Fetching ${libraries.length} server libraries...`);

	Bluebird.map(
		libraries,
		async (library) => {
			const libraryPath = libraryToPath(library.name) + ".jar";
			const url = library.url || MOJANG_MAVEN;

			const def: FileDef = {
				url: url + libraryPath,
			};

			if (library.checksums) {
				def.hashes = [{ id: "sha1", hashes: library.checksums }];
			}

			const destPath = upath.join(serverDestDirectory, "libraries", libraryPath);
			await fs.promises.mkdir(upath.dirname(destPath), { recursive: true });
			await fs.promises.writeFile(destPath, (await downloadOrRetrieveFileDef(def)).contents);
		},
		{ concurrency: buildConfig.downloaderConcurrency },
	);
}

/**
 * Download the server jar.
 */
async function downloadMinecraftServer() {
	log("Fetching the Minecraft version manifest...");

	/**
	 * Fetch the manifest file of all Minecraft versions.
	 */
	const manifest: VersionsManifest = await request({
		uri: LAUNCHERMETA_VERSION_MANIFEST,
		json: true,
		fullResponse: false,
	});

	/**
	 * Find the version defined in manifest.json.
	 */
	const version = manifest.versions.find((x) => x.id == modpackManifest.minecraft.version);
	if (!version) {
		throw new Error(`Couldn't find ${modpackManifest.minecraft.version} in the version manifest.`);
	}

	log(`Fetching the manifest file for Minecraft ${version.id}...`);

	/**
	 * Fetch the version manifest file.
	 */
	const versionManifest = await request({ uri: version.url, json: true, fullResponse: false });

	if (!(versionManifest.downloads && versionManifest.downloads.server)) {
		throw new Error(`No server jar file found for ${version.id}`);
	}

	/**
	 * Fetch the server jar file.
	 *
	 * Pass SHA1 hash to compare against the downloaded file.
	 */
	const serverJar = (
		await downloadOrRetrieveFileDef({
			url: versionManifest.downloads.server.url,
			hashes: [{ id: "sha1", hashes: versionManifest.downloads.server.sha1 }],
		})
	).contents;

	await fs.promises.writeFile(upath.join(serverDestDirectory, `minecraft_server.${version.id}.jar`), serverJar);
}

/**
 * Downloads mods according to manifest.json and checks hashes.
 */
async function downloadMods() {
	if (modpackManifest.files.length > 0) {
		log(`Fetching ${modpackManifest.files.length} mods...`);

		const modsPath = upath.join(serverDestDirectory, "mods");
		await fs.promises.mkdir(modsPath, { recursive: true });

		let fetched = 0;
		await Bluebird.map(
			modpackManifest.files,
			async (file) => {
				const fileInfo = await fetchFileInfo(file.projectID, file.fileID);

				const fileDef: FileDef = {
					url: fileInfo.downloadUrl,
					hashes: [{ id: "murmurhash", hashes: fileInfo.packageFingerprint }],
				};

				const modFile = await downloadOrRetrieveFileDef(fileDef);
				fetched += 1;

				if (modFile.reason == RetrievedFileDefReason.Downloaded) {
					log(`Downloaded ${upath.basename(fileInfo.downloadUrl)}... (${fetched} / ${modpackManifest.files.length})`);
				} else if (modFile.reason == RetrievedFileDefReason.CacheHit) {
					log(
						`Fetched ${upath.basename(fileInfo.downloadUrl)} from cache... (${fetched} / ${
							modpackManifest.files.length
						})`,
					);
				}

				await fs.promises.writeFile(upath.join(serverDestDirectory, "mods", fileInfo.fileName), modFile.contents);
			},
			{ concurrency: buildConfig.downloaderConcurrency },
		);
	} else {
		log("No mods to fetch.");
	}
}

/**
 * Copies modpack overrides.
 */
function copyServerOverrides() {
	const basedir = upath.join(sharedDestDirectory, overridesFolder);
	return src(
		buildConfig.copyOverridesServerGlobs.map((glob) => upath.join(basedir, glob)),
		{ base: basedir },
	).pipe(dest(serverDestDirectory));
}

/**
 * Copies files from ./serverfiles into dest folder.
 */
function copyServerfiles() {
	return src(["../serverfiles/**"]).pipe(dest(serverDestDirectory));
}

/**
 * Copies the license file.
 */
function copyServerLicense() {
	return src("../LICENSE.md").pipe(dest(serverDestDirectory));
}

/**
 * Copies files from ./launchscripts into dest folder and processes them using mustache.
 *
 * Replaces jvmArgs, minRAM, maxRAM and forgeJar.
 */
function processLaunchscripts() {
	const rules = {
		jvmArgs: buildConfig.launchscriptsJVMArgs,
		minRAM: buildConfig.launchscriptsMinRAM,
		maxRAM: buildConfig.launchscriptsMaxRAM,
		forgeJar: "",
	};

	if (g_forgeJar) {
		rules.forgeJar = g_forgeJar;
	} else {
		log.warn("No forgeJar specified!");
		log.warn("Did downloadForge task fail?");
	}

	return src(["../launchscripts/**"])
		.pipe(
			through.obj((file, _, callback) => {
				if (file.isBuffer()) {
					const rendered = mustache.render(file.contents.toString(), rules);
					file.contents = Buffer.from(rendered);
				}
				callback(null, file);
			}),
		)
		.pipe(dest(serverDestDirectory));
}

export default gulp.series([
	createServerDirs,
	gulp.parallel(
		downloadForge,
		downloadMinecraftServer,
		downloadMods,
		copyServerOverrides,
		copyServerfiles,
		copyServerLicense,
	),
	processLaunchscripts,
]);
