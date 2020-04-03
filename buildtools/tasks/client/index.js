const fs       = require("fs");
const log      = require("fancy-log");
const path     = require("path").posix;
const zip      = require("gulp-zip");
const Promise  = require("bluebird");

const { retryRequest } = require("../../util/downloaders.js");

const { src, dest } = require("gulp");

const SRC_FOLDER         = CONFIG.buildSourceDirectory;
const DEST_FOLDER        = CONFIG.buildDestinationDirectory;
const CLIENT_DEST_FOLDER = path.join(DEST_FOLDER, "client");
const TEMP_FOLDER        = path.join(DEST_FOLDER, "temp");

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
 * Copies the modpack manifest.
 */
function copyClientManifest() {
	return src("../manifest.json")
		.pipe(dest(CLIENT_DEST_FOLDER));
};

/**
 * Copies the license file.
 */
function copyClientLicense() {
	return src("../LICENSE.md")
		.pipe(dest(CLIENT_DEST_FOLDER));
};

/**
 * Copies modpack overrides.
 */
function copyClientOverrides() {
	const basedir = path.join(SRC_FOLDER, OVERRIDES_FOLDER);
	return src(CONFIG.copyOverridesClientGlobs.map(glob => path.join(basedir, glob)), { base: path.join(basedir, "..") })
		.pipe(dest(CLIENT_DEST_FOLDER));
};

/**
 * Fetches mod links and builds modlist.html.
 */
function fetchModList(cb) {
	log("Fetching mods...");
	
	/**
	 * Fetch file descriptions for download urls and hashes
	 * by mapping files to Promises.
	 */
	Promise.map(MODPACK_MANIFEST.files, file => {
		return retryRequest(
			CONFIG.downloaderMaxRetries
			, {
				uri: `https://addons-ecs.forgesvc.net/api/v2/addon/${file.projectID}`
				, json: true
			}
		)
	}, { concurrency: CONFIG.downloaderConcurrency }).then(modInfos => {
		const output = [
			"<ul>\r\n",
			...modInfos
				.sort((a, b) => a.id - b.id)
				.map(modInfo => {
					return `\t<li><a href="${modInfo.websiteUrl}">${modInfo.name} (by ${
						modInfo.authors[0].name
					})</a></li>\r\n`
				}),
			"</ul>",
		];

		fs.writeFile(path.join(CLIENT_DEST_FOLDER, "modlist.html"), output.join(""), () => {
			cb();
		})
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

module.exports = [
	createClientDirs,
	copyClientManifest,
	copyClientOverrides,
	copyClientLicense,
	fetchModList,
	zipClient
]