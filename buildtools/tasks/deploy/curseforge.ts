import { modpackManifest, sharedDestDirectory } from "../../globals";

import request from "requestretry";
import fs from "fs";
import log from "fancy-log";
import upath from "upath";
import buildConfig from "../../buildConfig";
import { makeArtifactNameBody } from "../../util/util";
import { Octokit } from "@octokit/rest";

const CURSEFORGE_ENDPOINT = "https://minecraft.curseforge.com/";

const variablesToCheck = ["CURSEFORGE_API_TOKEN", "CURSEFORGE_PROJECT_ID", "GITHUB_TAG"];

/**
 * Uploads build artifacts to CurseForge.
 */
async function deployCurseForge(): Promise<void> {
	/**
	 * Obligatory variable check.
	 */
	variablesToCheck.forEach((vari) => {
		if (!process.env[vari]) {
			throw new Error(`Environmental variable ${vari} is unset.`);
		}
	});

	const octokit = new Octokit({
		auth: process.env.GITHUB_TOKEN,
	});

	const parsedSlug = /(.+)\/(.+)/.exec(process.env.GITHUB_REPOSITORY);
	if (!parsedSlug) {
		throw new Error("No/malformed GitHub repository slug provided.");
	}

	const repo = {
		owner: parsedSlug[1],
		repo: parsedSlug[2],
	};

	// Fetch the tag SHA
	const tag = process.env.GITHUB_TAG;
	const tagRef = await octokit.git.getRef({
		ref: `tags/${tag}`,
		...repo,
	});

	if (!tagRef) {
		throw new Error(`Couldn't look up tag ${tag}`);
	}

	// Fetch the tag message
	const tagInfo = await octokit.git.getTag({
		tag_sha: tagRef.data.object.sha,
		...repo,
	});
	const flavorText = tagInfo.data.message.replace(/\n/g, "");

	const files = [
		{
			name: makeArtifactNameBody(modpackManifest.name, process.env.GITHUB_REF, process.env.GITHUB_SHA) + "-client.zip",
			displayName: `${modpackManifest.name} - ${tag} - ${flavorText}`,
		},
		{
			name: makeArtifactNameBody(modpackManifest.name, process.env.GITHUB_REF, process.env.GITHUB_SHA) + "-server.zip",
			displayName: `${modpackManifest.name} - ${tag} - ${flavorText} Server`,
		},
	];

	/**
	 * Obligatory file check.
	 */
	files.forEach((file) => {
		const path = upath.join(buildConfig.buildDestinationDirectory, file.name);
		if (!fs.existsSync(path)) {
			throw new Error(`File ${path} doesn't exist!`);
		}
	});

	// Since we've built everything beforehand, the changelog must be available in the shared directory.
	const changelog = await (await fs.promises.readFile(upath.join(sharedDestDirectory, "CHANGELOG.md")))
		.toString()
		.replace(/\n/g, "  \n")
		.replace(/\n\*/g, "\n•");

	const tokenHeaders = {
		"X-Api-Token": process.env.CURSEFORGE_API_TOKEN,
	};

	// Fetch the list of Minecraft versions from CurseForge.
	log("Fetching CurseForge version manifest...");
	const versionsManifest =
		(await request({
			uri: CURSEFORGE_ENDPOINT + "api/game/versions",
			headers: tokenHeaders,
			method: "GET",
			json: true,
			fullResponse: false,
		})) || [];

	const version = versionsManifest.find((m) => m.name == modpackManifest.minecraft.version);

	if (!version) {
		throw new Error(`Version ${modpackManifest.minecraft.version} not found on CurseForge.`);
	}

	let clientFileID: number | null;

	// Upload artifacts.
	for (const file of files) {
		const options = {
			uri: CURSEFORGE_ENDPOINT + `api/projects/${process.env.CURSEFORGE_PROJECT_ID}/upload-file`,
			method: "POST",
			headers: {
				...tokenHeaders,
				"Content-Type": "multipart/form-data",
			},
			formData: {
				metadata: JSON.stringify({
					changelog: changelog,
					changelogType: "markdown",
					releaseType: "release",
					parentFileID: clientFileID,
					gameVersions: clientFileID ? undefined : [version.id],
					displayName: file.displayName,
				}),
				file: fs.createReadStream(upath.join(buildConfig.buildDestinationDirectory, file.name)),
			},
			json: true,
			fullResponse: false,
		};

		log(`Uploading ${file.name} to CurseForge...` + (clientFileID ? `(child of ${clientFileID})` : ""));

		const response = await request(options);

		if (response && response.id) {
			if (!clientFileID) {
				clientFileID = response.id;
			}
		} else {
			throw new Error(`Failed to upload ${file.name}: Invalid Response.`);
		}
	}
}

export default deployCurseForge;
