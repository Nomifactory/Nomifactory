const fs = require("fs");
const path = require("path").posix;

/**
 * Config!
 * 
 * Uses ./config.default.js for default values.
 * 
 * Please create ./config.js and overwrite values as you see fit.
 * Don't modify the default file!
 */
const CONFIG = require("./config.default.js");
if (!CONFIG || CONFIG.constructor !== Object) {
	throw new Error(`Fatal Error: malformed default config file.`);
}

const CUSTOM_CONFIG_PATH = "./config.js";

/**
 * If ./config.js exists, merge its values with the default config file.
 */
if (fs.existsSync(CUSTOM_CONFIG_PATH)) {
	const customConfig = require(CUSTOM_CONFIG_PATH);
	if (!customConfig || customConfig.constructor !== Object) {
		throw new Error(`Fatal Error: malformed ${CUSTOM_CONFIG_PATH}.`);
	}

	Object.assign(defaultConfig, customConfig);
}

global.CONFIG = CONFIG;
global.LOCAL_STORAGE = {};

global.MODPACK_MANIFEST = JSON.parse(fs.readFileSync(path.join(CONFIG.buildSourceDirectory, "manifest.json")));
global.OVERRIDES_FOLDER = MODPACK_MANIFEST.overrides || "overrides";
