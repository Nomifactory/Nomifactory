const { Octokit } = require("@octokit/rest");
const fs = require("fs");
const path = require("path").posix;
const mustache = require("mustache");

const REGEX_SLUG = /(.+)\/(.+)/;

const DEST_FOLDER        = global.CONFIG.buildDestinationDirectory;
const SHARED_DEST_FOLDER = path.join(DEST_FOLDER, "shared");

const randomPatchesConfigFile = "config/randompatches.cfg";

/**
 * Transform the version field of manifest.json.
 */
async function transformManifestVersion(cb) {
	let versionTitle = global.MODPACK_MANIFEST.name;

	if (process.env.TRAVIS) {
		// Untagged Build
		if (process.env.TRAVIS_TAG !== process.env.TRAVIS_BRANCH) {
			versionTitle += ` (${process.env.TRAVIS_BRANCH}, ${process.env.TRAVIS_COMMIT.substr(0, 7)})`
		}
		// Tagged Build
		else {
			const parsedSlug = REGEX_SLUG.exec(process.env.TRAVIS_REPO_SLUG);
			if (!parsedSlug) {
				cb(`Malformed GitHub repository slug: ${process.env.TRAVIS_REPO_SLUG}`);
			}
			
			const slug = {
				owner: parsedSlug[1],
				repo: parsedSlug[2],
			};

			const octokit = new Octokit({
				auth: process.env.GITHUB_TOKEN
			});

			// Fetch the tag SHA
			const tagRef = await octokit.git.getRef({
				...slug,
				ref: `tags/${process.env.TRAVIS_TAG}`
			});

			if (!tagRef) {
				cb(`Couldn't look up tag ${process.env.TRAVIS_TAG}`);
			}

			// Fetch the tag message
			const tagInfo = await octokit.git.getTag({
				...slug,
				tag_sha: tagRef.data.object.sha
			});

			const version = tagInfo.data.tag.replace(/^v/, "");

			versionTitle += ` - ${version} - ${tagInfo.data.message.replace(/\n/g, "")}`;
		}
	} else {
		versionTitle += " (manual build)";
	}

	global.MODPACK_MANIFEST.name = versionTitle;
	
	const randomPatchesConfigFilePath = path.join(
		SHARED_DEST_FOLDER, global.OVERRIDES_FOLDER, randomPatchesConfigFile
	);

	const randomPatchesFile = (await fs.promises.readFile(randomPatchesConfigFilePath)).toString();

	await fs.promises.writeFile(randomPatchesConfigFilePath, mustache.render(randomPatchesFile, {
		title: versionTitle
	}));
	
	cb();
}

module.exports = transformManifestVersion;
