import { Octokit } from "@octokit/rest";
import fs from "fs";
import upath from "path";
import mustache from "mustache";
import { modpackManifest, overridesFolder, sharedDestDirectory } from "../../../globals";

const REGEX_SLUG = /(.+)\/(.+)/;
const randomPatchesConfigFile = "config/randompatches.cfg";

/**
 * Transform the version field of manifest.json.
 */
export default async function transformManifestVersion(): Promise<void> {
	let versionTitle = modpackManifest.name;

	if (process.env.GITHUB_TAG) {
		const parsedSlug = REGEX_SLUG.exec(process.env.GITHUB_REPOSITORY);
		if (!parsedSlug) {
			throw new Error(`Malformed GitHub repository slug: ${process.env.GITHUB_REPOSITORY}`);
		}

		const slug = {
			owner: parsedSlug[1],
			repo: parsedSlug[2],
		};

		const octokit = new Octokit({
			auth: process.env.GITHUB_TOKEN,
		});

		// Fetch the tag SHA
		const tagRef = await octokit.git.getRef({
			...slug,
			ref: `tags/${process.env.GITHUB_TAG}`,
		});

		if (!tagRef) {
			throw new Error(`Couldn't look up tag ${process.env.GITHUB_TAG}`);
		}

		// Fetch the tag message
		const tagInfo = await octokit.git.getTag({
			...slug,
			tag_sha: tagRef.data.object.sha,
		});

		const version = tagInfo.data.tag.replace(/^v/, "");

		versionTitle += ` - ${version} - ${tagInfo.data.message.replace(/\n/g, "")}`;
	} else {
		versionTitle += " (manual build)";
	}

	modpackManifest.name = versionTitle;

	const randomPatchesConfigFilePath = upath.join(sharedDestDirectory, overridesFolder, randomPatchesConfigFile);
	const randomPatchesFile = (await fs.promises.readFile(randomPatchesConfigFilePath)).toString();

	await fs.promises.writeFile(
		randomPatchesConfigFilePath,
		mustache.render(randomPatchesFile, {
			title: versionTitle,
		}),
	);
}