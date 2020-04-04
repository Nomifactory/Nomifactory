const { Octokit } = require("@octokit/rest");
const log = require("fancy-log");

/** @type {InstanceType<typeof Octokit>} */
var octokit;

const REGEX_SLUG = /(.+)\/(.+)/;

/**
 * Setup Octokit so we can remove the pre-release tag before
 * pushing a new release so Travis doesn't complain.
 */
async function setupOctokit(cb) {
	if (!process.env.GITHUB_TOKEN) {
		cb("No GitHub token provided.");
	}

	octokit = new Octokit({
		auth: process.env.GITHUB_TOKEN
	});
	
	const parsedSlug = REGEX_SLUG.exec(process.env.TRAVIS_REPO_SLUG);
	if (parsedSlug) {
		LOCAL_STORAGE.GITHUB_OWNER = parsedSlug[1];
		LOCAL_STORAGE.GITHUB_REPO = parsedSlug[2];
	} else {
		cb("No/malformed GitHub repository slug provided.");
	}

	cb();
}

/**
 * Remove the pre-release release.
 * 
 * Does nothing if the current build is tagged or the
 * pre-release release doesn't exist.
 *
 */
async function fetchAndRemovePrereleaseRelease(cb) {
	if (process.env.TRAVIS_TAG) {
		log("Tagged build, bailing out.");
		cb();
	}

	const releases = await octokit.repos.listReleases({
		owner: LOCAL_STORAGE.GITHUB_OWNER,
		repo: LOCAL_STORAGE.GITHUB_REPO,
	});

	const prerelease = releases.data
		.find(x => x.tag_name == "latest-dev-preview");

	if (prerelease) {
		log(`Removing pre-release with tag ${prerelease.tag_name}...`)
		await octokit.repos.deleteRelease({
			owner: LOCAL_STORAGE.GITHUB_OWNER,
			repo: LOCAL_STORAGE.GITHUB_REPO,
			release_id: prerelease.id
		});

		log(`Removed pre-release with tag ${prerelease.tag_name}.`)
	}

	cb();
}

/**
 * Remove the pre-release tag.
 * 
 * Does nothing if the current build is tagged or the
 * pre-release tag doesn't exist.
 *
 */
async function fetchAndRemovePrereleaseTag(cb) {
	if (process.env.TRAVIS_TAG) {
		log("Tagged build, bailing out.");
		cb();
	}

	const tags = await octokit.repos.listTags({
		owner: LOCAL_STORAGE.GITHUB_OWNER,
		repo: LOCAL_STORAGE.GITHUB_REPO,
	});

	const prereleaseTag = tags.data.find(x => x.name == "latest-dev-preview");

	if (prereleaseTag) {
		log(`Removing pre-release tag ${prereleaseTag.name}...`)

		await octokit.git.deleteRef({
			owner: LOCAL_STORAGE.GITHUB_OWNER,
			repo: LOCAL_STORAGE.GITHUB_REPO,
			ref: `tags/${prereleaseTag.name}`
		});

		log(`Removed pre-release tag ${prereleaseTag.name}.`)
	}

	cb();
}

module.exports = [
	setupOctokit,
	fetchAndRemovePrereleaseRelease,
	fetchAndRemovePrereleaseTag
]
