import { modpackManifest, sharedDestDirectory } from "../../globals";

import fs from "fs";
import upath from "upath";
import buildConfig from "../../buildConfig";
import { makeArtifactNameBody } from "../../util/util";
import Bluebird from "bluebird";
import { Octokit } from "@octokit/rest";
import sanitize from "sanitize-filename";

const variablesToCheck = ["GITHUB_TAG", "GITHUB_TOKEN", "GITHUB_REPOSITORY"];

/**
 * Uploads build artifacts to GitHub Releases.
 */
async function deployReleases(): Promise<void> {
	/**
	 * Obligatory variable check.
	 */
	variablesToCheck.forEach((vari) => {
		if (!process.env[vari]) {
			throw new Error(`Environmental variable ${vari} is unset.`);
		}
	});

	const body = makeArtifactNameBody(modpackManifest.name, process.env.GITHUB_REF, process.env.GITHUB_SHA);
	const files = ["client", "server", "lang"].map((file) => sanitize(`${body}-${file}.zip`));

	/**
	 * Obligatory file check.
	 */
	files.forEach((file) => {
		const path = upath.join(buildConfig.buildDestinationDirectory, file);
		if (!fs.existsSync(path)) {
			throw new Error(`File ${path} doesn't exist!`);
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

	// Since we've built everything beforehand, the changelog must be available in the shared directory.
	const changelog = await (await fs.promises.readFile(upath.join(sharedDestDirectory, "CHANGELOG.md"))).toString();

	// Create a release.
	const release = await octokit.repos.createRelease({
		tag_name: tag || "latest-dev-preview",
		prerelease: !tag,
		name: `${modpackManifest.name} - ${tag} - ${flavorText}`,
		body: changelog,
		...repo,
	});

	// Upload artifacts.
	await Bluebird.map(files, async (file) => {
		await octokit.repos.uploadReleaseAsset({
			name: file,
			release_id: release.data.id,
			...repo,

			// Dumb workaround thanks to broken typings.
			data: ((await fs.promises.readFile(
				upath.join(buildConfig.buildDestinationDirectory, file),
			)) as unknown) as string,
		});
	});

	await octokit.repos.updateRelease({
		release_id: release.data.id,
		draft: false,
		...repo,
	});
}

export default deployReleases;
