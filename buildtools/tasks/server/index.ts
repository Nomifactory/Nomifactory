import upath from "upath";
import unzip from "unzipper";
import through from "through2";
import mustache from "mustache";
import log from "fancy-log";
import gulp, { src, dest, symlink } from "gulp";
import fs from "fs";
import buildConfig from "../../buildConfig";
import Bluebird from "bluebird";
import { ForgeProfile } from "../../types/forgeProfile";
import { FileDef } from "../../types/fileDef";
import { downloadOrRetrieveFileDef, getVersionManifest, libraryToPath, relative } from "../../util/util";
import { modpackManifest, serverDestDirectory, sharedDestDirectory } from "../../globals";
import del from "del";
import { VersionManifest } from "../../types/versionManifest";
import { fetchMods } from "../../util/curseForgeAPI";

const FORGE_VERSION_REG = /forge-(.+)/;
const FORGE_MAVEN = "https://files.minecraftforge.net/maven/";

let g_forgeJar;

async function serverCleanUp() {
	return del(upath.join(serverDestDirectory, "*"), { force: true });
}

/**
 * Checks and creates all necessary directories so we can build the client safely.
 */
async function createServerDirs() {
	if (!fs.existsSync(serverDestDirectory)) {
		return fs.promises.mkdir(serverDestDirectory, { recursive: true });
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
	const forgeUniversalPath = upath.join("maven", libraryToPath(forgeMavenLibrary) + ".jar");

	/**
	 * Fetch the Forge installer
	 */
	const forgeJar = await fs.promises.readFile(
		(
			await downloadOrRetrieveFileDef({
				url: FORGE_MAVEN + forgeInstallerPath,
			})
		).cachePath,
	);

	/**
	 * Parse the profile manifest.
	 */
	let forgeUniversalJar: Buffer, forgeProfile: ForgeProfile;
	const files = (await unzip.Open.buffer(forgeJar))?.files;

	log("Extracting Forge installation profile & jar...");

	if (!files) {
		throw new Error("Malformed Forge installation jar.");
	}

	for (const file of files) {
		// Look for the universal jar.
		if (!forgeUniversalJar && file.path == forgeUniversalPath) {
			forgeUniversalJar = await file.buffer();
		}
		// Look for the installation profile.
		else if (!forgeProfile && file.path == "version.json") {
			forgeProfile = JSON.parse((await file.buffer()).toString());
		}

		if (forgeUniversalJar && forgeProfile) {
			break;
		}
	}

	if (!forgeProfile || !forgeProfile.libraries) {
		throw new Error("Malformed Forge installation profile.");
	}

	if (!forgeUniversalJar) {
		throw new Error("Couldn't find the universal Forge jar in the installation jar.");
	}

	/**
	 * Move the universal jar into the dist folder.
	 */
	log("Extracting the Forge jar...");
	await fs.promises.writeFile(upath.join(serverDestDirectory, upath.basename(forgeUniversalPath)), forgeUniversalJar);

	/**
	 * Save the universal jar file name for later.
	 *
	 * We will need it to process launchscripts.
	 */
	g_forgeJar = upath.basename(forgeUniversalPath);

	/**
	 * Finally, fetch libraries.
	 */
	const libraries = forgeProfile.libraries.filter((x) => Boolean(x?.downloads?.artifact?.url));
	log(`Fetching ${libraries.length} server libraries...`);

	return Bluebird.map(
		libraries,
		async (library) => {
			const libraryPath = library.downloads.artifact.path;

			const def: FileDef = {
				url: library.downloads.artifact.url,
			};

			if (library.downloads.artifact.sha1) {
				def.hashes = [{ id: "sha1", hashes: [library.downloads.artifact.sha1] }];
			}

			const destPath = upath.join(serverDestDirectory, "libraries", libraryPath);

			await fs.promises.mkdir(upath.dirname(destPath), { recursive: true });
			await fs.promises.symlink(relative(destPath, (await downloadOrRetrieveFileDef(def)).cachePath), destPath);
		},
		{ concurrency: buildConfig.downloaderConcurrency },
	);
}

/**
 * Download the server jar.
 */
async function downloadMinecraftServer() {
	log("Fetching the Minecraft version manifest...");
	const versionManifest: VersionManifest = await getVersionManifest(modpackManifest.minecraft.version);
	if (!versionManifest) {
		throw new Error(`No manifest found for Minecraft ${versionManifest.id}`);
	}

	/**
	 * Fetch the server jar file.
	 *
	 * Pass SHA1 hash to compare against the downloaded file.
	 */
	const serverJar = await downloadOrRetrieveFileDef({
		url: versionManifest.downloads.server.url,
		hashes: [{ id: "sha1", hashes: versionManifest.downloads.server.sha1 }],
	});

	if (!(versionManifest.downloads && versionManifest.downloads.server)) {
		throw new Error(`No server jar file found for ${versionManifest.id}`);
	}

	const dest = upath.join(serverDestDirectory, `minecraft_server.${versionManifest.id}.jar`);
	await fs.promises.symlink(relative(dest, serverJar.cachePath), dest);
}

/**
 * Downloads mods according to manifest.json and checks hashes.
 */
async function downloadMods() {
	return fetchMods(
		modpackManifest.files.filter((f) => !f.sides || f.sides.includes("server")),
		serverDestDirectory,
	);
}

/**
 * Copies modpack overrides.
 */
function copyServerOverrides() {
	return gulp
		.src(buildConfig.copyFromSharedServerGlobs, { nodir: true, cwd: sharedDestDirectory, allowEmpty: true })
		.pipe(symlink(upath.join(serverDestDirectory)));
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
 * Copies the update notes file.
 */
function copyServerUpdateNotes() {
	return src("../UPDATENOTES.md", { allowEmpty: true }).pipe(dest(serverDestDirectory));
}

/**
 * Copies the changelog file.
 */
function copyServerChangelog() {
	return src(upath.join(sharedDestDirectory, "CHANGELOG.md")).pipe(dest(serverDestDirectory));
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
	serverCleanUp,
	createServerDirs,
	downloadForge,
	downloadMinecraftServer,
	downloadMods,
	copyServerOverrides,
	copyServerfiles,
	copyServerLicense,
	copyServerChangelog,
	copyServerUpdateNotes,
	processLaunchscripts,
]);
