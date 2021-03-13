const request = require("request-promise");
const fs = require("fs");
const log = require("fancy-log");
const path = require("path").posix;

const CURSEFORGE_ENDPOINT = "https://minecraft.curseforge.com/";

const variablesToCheck = [
	"CURSEFORGE_API_TOKEN",
	"CURSEFORGE_PROJECT_ID",
	"CLIENT_ARCHIVE",
	"SERVER_ARCHIVE",
]

/**
 * Uploads build artifacts to CurseForge.
 */
async function deployCurseForge(cb) {
	/**
	 * Obligatory variable check.
	 */
	variablesToCheck.forEach(vari => {
		if (!process.env[vari]) {
			return cb(`Environmental variable ${vari} is unset.`);
		}
	});

	const tokenHeaders = {
		"X-Api-Token": process.env.CURSEFORGE_API_TOKEN
	};

	/**
	 * Fetch the list of Minecraft versions from CurseForge.
	 */
	log("Fetching CurseForge version manifest...");
	const versionsManifest = await request({
		uri: CURSEFORGE_ENDPOINT + "api/game/versions",
		headers: tokenHeaders,
		method: "GET",
		json: true
	}) || [];

	const version = versionsManifest
		.find(m => m.name == global.MODPACK_MANIFEST.minecraft.version);

	if (version) {
		/** @type {number | null} */
		var clientFileID;

		/**
		 * Upload artifacts.
		 */
		for (const file of [process.env.CLIENT_ARCHIVE, process.env.SERVER_ARCHIVE]) {
			const options = {
				uri: CURSEFORGE_ENDPOINT
					+ `api/projects/${process.env.CURSEFORGE_PROJECT_ID}/upload-file`,
				method: "POST",
				headers: {
					...tokenHeaders,
					"Content-Type": "multipart/form-data"
				},
				formData: {
					metadata: JSON.stringify({
						changelog: "",
						releaseType: "release",
						parentFileID: clientFileID,
						gameVersions: clientFileID ? undefined : [ version.id ],
					}),
					file: fs.createReadStream(
						path.join(global.CONFIG.buildDestinationDirectory, `${file}.zip`)
					),
				},
				json: true
			};

			log(`Uploading ${file} to CurseForge...`
				+ (clientFileID ? `(child of ${clientFileID})` : "")
			);

			/** @type {Object} */
			const response = await request(options);

			if (response && response.id) {
				if (!clientFileID) {
					clientFileID = response.id;
				}
			} else {
				return cb(`Failed to upload ${file}: Invalid Response.`);
			}
		}
	} else {
		return cb(`Version ${
			global.MODPACK_MANIFEST.minecraft.version
		} not found on CurseForge.`)
	}

	cb();
}

module.exports = [
	deployCurseForge
]
