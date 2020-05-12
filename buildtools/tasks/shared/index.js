const fs       = require("fs");
const log      = require("fancy-log");
const path     = require("path").posix;
const zip      = require("gulp-zip");

const { src, dest } = require("gulp");

const SRC_FOLDER         = global.CONFIG.buildSourceDirectory;
const DEST_FOLDER        = global.CONFIG.buildDestinationDirectory;
const SHARED_DEST_FOLDER = path.join(DEST_FOLDER, "shared");
const TEMP_FOLDER        = path.join(DEST_FOLDER, "temp");

/**
 * Copies modpack overrides.
 */
function copyOverrides() {
	const basedir = path.join(SRC_FOLDER, global.OVERRIDES_FOLDER);
	return src(
		global.CONFIG.copyOverridesClientGlobs
			.map(glob => path.join(basedir, glob))

		, { base: path.join(basedir, "..") }
	)
		.pipe(dest(SHARED_DEST_FOLDER));
}

function createSharedDirs(cb) {
	const toCreate = [
		SHARED_DEST_FOLDER,
		TEMP_FOLDER
	];

	toCreate.forEach((dir) => {
		log(`Creating folder ${path.normalize(dir)}`);
		fs.mkdirSync(dir, { recursive: true })
	});

	cb();
}

/**
 * Zips the language files.
 */
function zipLang() {
	const resourcesPath = path.join(SHARED_DEST_FOLDER, global.OVERRIDES_FOLDER, "resources");
	const globs = ["**/*.lang", "**/*.mcmeta"]
		.map(x => path.join(resourcesPath, x));

	return src(globs, { nodir: true, base: resourcesPath })
		.pipe(zip("lang.zip"))
		.pipe(dest(DEST_FOLDER));
}

module.exports = [
	createSharedDirs,
	copyOverrides,
	...require("./transforms"),
	zipLang
]
