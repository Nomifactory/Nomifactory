const fs       = require("fs");
const log      = require("fancy-log");
const path     = require("path").posix;
const zip      = require("gulp-zip");
const merge    = require("merge-stream");
const rename   = require("gulp-rename");


const { src, dest } = require("gulp");

const DEST_FOLDER        = global.CONFIG.buildDestinationDirectory;
const SHARED_DEST_FOLDER = path.join(DEST_FOLDER, "shared");
const CLIENT_DEST_FOLDER = path.join(DEST_FOLDER, "client");
const TEMP_FOLDER        = path.join(DEST_FOLDER, "temp");

const { fetchModInfos } = require("../../util/util.js");

function createClientDirs(cb) {
	const toCreate = [
		CLIENT_DEST_FOLDER,
		TEMP_FOLDER
	];

	toCreate.forEach((dir) => {
		log(`Creating folder ${path.normalize(dir)}`);
		fs.mkdirSync(dir, { recursive: true })
	});

	cb();
}

/**
 * Saves the modpack manifest.
 */
function saveModpackManifest(cb) {
	const manifestPath = path.join(CLIENT_DEST_FOLDER, "manifest.json");
	fs.writeFileSync(manifestPath, JSON.stringify(global.MODPACK_MANIFEST, null, "  "));

	cb();
}

/**
 * Copies the license file.
 */
function copyClientLicense() {
	return src("../LICENSE.md")
		.pipe(dest(CLIENT_DEST_FOLDER));
}

/**
 * Copies modpack overrides.
 */
function copyClientOverrides() {
	const basedir = path.join(SHARED_DEST_FOLDER, global.OVERRIDES_FOLDER);
	return src(
		global.CONFIG.copyOverridesClientGlobs
			.map(glob => path.join(basedir, glob))

		, { base: path.join(basedir, "..") }
	)
		.pipe(dest(CLIENT_DEST_FOLDER));
}

/**
 * Fetches mod links and builds modlist.html.
 */
async function fetchModList(cb) {
	log("Fetching mod infos...");

	// Fetch project/addon infos.
	const toFetch = global.MODPACK_MANIFEST.files.map(mod => mod.projectID);
	const modInfos = await fetchModInfos(toFetch);

	log(`Fetched ${modInfos.length} mod infos`);

	// Create modlist.html
	const output = [
		"<ul>\r\n",
		...modInfos
			// Sort mods by their project IDs.
			.sort((a, b) => a.id - b.id)

			// Create a <li> node for each mod.
			//
			.map(modInfo => {
				return `\t<li><a href="${modInfo.websiteUrl}">${modInfo.name || "Unknown"} (by ${
					modInfo.authors.map((author) => author.name || "Someone").join(", ")
				})</a></li>\r\n`
			}),
		"</ul>",
	];

	fs.writeFile(path.join(CLIENT_DEST_FOLDER, "modlist.html"), output.join(""), () => {
		cb();
	})
}

/**
 * Zips the client directory.
 */
function zipClient() {
	return src(path.join(CLIENT_DEST_FOLDER, "**"), { nodir: true, base: CLIENT_DEST_FOLDER })
		.pipe(zip("client.zip"))
		.pipe(dest(DEST_FOLDER));
}

/**
 * Zips the language files.
 */
 function zipLang() {
	const resourcesPath = path.join(SHARED_DEST_FOLDER, global.OVERRIDES_FOLDER, "resources");

	const opts = { nodir: true, base: resourcesPath };
	const streams = [
		src(path.join(resourcesPath, "pack.mcmeta"), opts),
		src(path.join(resourcesPath, "**/*.lang"), opts)
			.pipe(rename(f => {
				f.dirname = path.join("assets", f.dirname);
			}))
	];

	return merge(...streams)
		.pipe(zip("lang.zip"))
		.pipe(dest(DEST_FOLDER));
}

module.exports = [
	createClientDirs,
	saveModpackManifest,
	copyClientOverrides,
	copyClientLicense,
	fetchModList,
	zipClient,
	zipLang
]
