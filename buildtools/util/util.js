const LIBRARY_REG = /^(.+?):(.+?):(.+?)$/;

/**
 * Parses the library name into path following the standard package naming convention.
 *
 * Turns `package:name:version` into `package/name/version/name-version`.
 *
 * @param {string} library
 */
exports.libraryToPath = (library) => {
	const parsedLibrary = LIBRARY_REG.exec(library);
	if (parsedLibrary) {
		const package = parsedLibrary[1].replace(/\./g, "/");
		const name = parsedLibrary[2];
		const version = parsedLibrary[3];

		const newURL = `${package}/${name}/${version}/${name}-${version}`

		return newURL;
	}
}

/**
 * Checks if given environmental variables are set.
 * Throws when if a variable is unset.
 *
 * @param {string[]} vars
 * @throws
 */
exports.checkEnvironmentalVariables = (vars) => {
	vars.forEach((vari) => {
		if (!process.env[vari] || process.env[vari] == "") {
			throw new Error(`Environmental variable ${vari} is unset.`);
		}
	});
}

const log = require("fancy-log");
const Promise = require("bluebird");
const { retryRequest } = require("./downloaders");

/**
 * Fetches information about provided project IDs.
 *
 * @param {number[]} toFetch Project IDs to fetch.
 * @returns {Object[]} Fetched mod infos.
 */
exports.fetchModInfos = async (toFetch) => {
	const modInfos = await retryRequest(global.CONFIG.downloaderMaxRetries, {
		uri: "https://addons-ecs.forgesvc.net/api/v2/addon/",
		method: "post",
		json: toFetch
	});

	if (!modInfos || modInfos.length === 0) {
		throw new Error("Couldn't fetch mods due to empty response");
	}

	// In case we haven't received the proper amount of mod infos,
	// try requesting them individually.
	if (modInfos.length !== toFetch.length) {
		const modInfoIDs = new Set(modInfos.map((mi) => mi.id));
		const toFetchMissing = [...new Set(toFetch.filter(x => !modInfoIDs.has(x)))];

		log.warn(`Couldn't fetch next project IDs in bulk: ${toFetchMissing.join(", ")}`);

		// Try fetching mods individually, in case they've been deleted.
		let count = 0;
		const missingModInfos = await Promise.map(toFetchMissing, async (id) => {
			log.info(`Fetching project ID ${id} directly... (${++count} / ${toFetchMissing.length})`);

			try {
				return await retryRequest(global.CONFIG.downloaderMaxRetries, {
					uri: `https://addons-ecs.forgesvc.net/api/v2/addon/${id}`,
					json: true
				});
				// In case something fails to download; catch, rewrite, rethrow.
			} catch (err) {
				err.message = `Couldn't fetch project ID ${id}. ${err.message || "Unknown error"}`;
				throw err;
			}
		});

		// The code above is expected to throw and terminate the further execution,
		// so we can just do this.
		modInfos.push(...missingModInfos);
	}

	return modInfos;
}
