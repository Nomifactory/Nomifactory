const request = require("request-promise");
const fs = require("fs");
const log = require("fancy-log");
const path = require("path").posix;

const CURSEFORGE_ENDPOINT = "https://minecraft.curseforge.com/";

async function deployCurseForge(cb) {
	if (!process.env.CURSEFORGE_API_TOKEN) {
		return cb("Environmental variable CURSEFORGE_API_TOKEN is unset.");
	}

	if (!process.env.CURSEFORGE_PROJECT_ID) {
		return cb("Environmental variable CURSEFORGE_PROJECT_ID is unset.");
	}

	if (!process.env.CLIENT_ARCHIVE) {
		return cb("Environmental variable SERVER_ARCHIVE is unset.");
	}

	if (!process.env.SERVER_ARCHIVE) {
		return cb("Environmental variable SERVER_ARCHIVE is unset.");
	}

	const tokenHeaders = {
		"X-Api-Token": process.env.CURSEFORGE_API_TOKEN
	};

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
		var clientFileID;

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
					file: fs.createReadStream(path.join(global.CONFIG.buildDestinationDirectory, `${file}.zip`)),
				},
				json: true
			};

			if (clientFileID) {
				log(`Uploading ${file} to CurseForge... (child of ${clientFileID})`);
			} else {
				log(`Uploading ${file} to CurseForge...`);
			}

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
