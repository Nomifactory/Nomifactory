import { Octokit } from "@octokit/rest";
import log from "fancy-log";
import gulp from "gulp";
import sanitize from "sanitize-filename";
import fs from "fs";
import buildConfig from "../../buildConfig";
import upath from "upath";
import Bluebird from "bluebird";

let octokit: Octokit;

const REGEX_SLUG = /(.+)\/(.+)/;
let g_GitHubOwner;
let g_GitHubRepo;

/**
 * Setup Octokit so we can remove the pre-release tag before pushing a new release.
 */
async function setupOctokit() {
	if (!process.env.GITHUB_TOKEN) {
		throw new Error("No GitHub token provided.");
	}

	octokit = new Octokit({
		auth: process.env.GITHUB_TOKEN,
	});

	const parsedSlug = REGEX_SLUG.exec(process.env.GITHUB_REPOSITORY);
	if (parsedSlug) {
		g_GitHubOwner = parsedSlug[1];
		g_GitHubRepo = parsedSlug[2];
	} else {
		throw new Error("No/malformed GitHub repository slug provided.");
	}
}

/**
 * Remove the pre-release release.
 *
 * Does nothing if the current build is tagged or the
 * pre-release release doesn't exist.
 *
 */
async function fetchAndRemovePrereleaseRelease() {
	if (process.env.GITHUB_REF.startsWith("refs/tags/")) {
		log("Tagged build, bailing out.");
		return;
	}

	const releases = await octokit.repos.listReleases({
		owner: g_GitHubOwner,
		repo: g_GitHubRepo,
	});

	const prerelease = releases.data.find((x) => x.tag_name == "latest-dev-preview");
	if (prerelease) {
		log(`Removing pre-release with tag ${prerelease.tag_name}...`);
		await octokit.repos.deleteRelease({
			owner: g_GitHubOwner,
			repo: g_GitHubRepo,
			release_id: prerelease.id,
		});

		log(`Removed pre-release with tag ${prerelease.tag_name}.`);
	}
}

/**
 * Remove the pre-release tag.
 *
 * Does nothing if the current build is tagged or the
 * pre-release tag doesn't exist.
 *
 */
async function fetchAndRemovePrereleaseTag() {
	if (process.env.GITHUB_REF.startsWith("refs/tags/")) {
		log("Tagged build, bailing out.");
		return;
	}

	const tags = await octokit.repos.listTags({
		owner: g_GitHubOwner,
		repo: g_GitHubRepo,
	});

	const prereleaseTag = tags.data.find((x) => x.name == "latest-dev-preview");
	if (prereleaseTag) {
		log(`Removing pre-release tag ${prereleaseTag.name}...`);

		await octokit.git.deleteRef({
			owner: g_GitHubOwner,
			repo: g_GitHubRepo,
			ref: `tags/${prereleaseTag.name}`,
		});

		log(`Removed pre-release tag ${prereleaseTag.name}.`);
	}
}

/**
 * Rename built artifacts.
 */
async function renameArtifactsAndUpload() {
	let match, tag: string, branch: string;
	// Determine and extract the tag/branch name.
	if ((match = /refs\/(tags|heads)\/(.+)/i.exec(process.env.GITHUB_REF))) {
		if (match[1] == "tags") {
			tag = match[2];
		} else {
			branch = match[2];
		}
	} else {
		throw new Error(`Invalid GITHUB_REF: ${process.env.GITHUB_REF}.`);
	}

	// Decide how we want to name the zips.
	// Untagged: (repo)-(branch)-(7 symbols of SHA)
	//   tagged: (repo)-(tag)
	let artifactNameBody;
	if (tag) {
		artifactNameBody = `${g_GitHubRepo}-${tag}`;
	} else {
		const shortCommit = process.env.GITHUB_SHA.substr(0, 7);
		artifactNameBody = `${g_GitHubRepo}-${branch}-${shortCommit}`;
	}

	const repo = {
		owner: g_GitHubOwner,
		repo: g_GitHubRepo,
	};

	// Create a release.
	const release = await octokit.repos.createRelease({
		tag_name: tag || "latest-dev-preview",
		prerelease: !tag,
		name: tag ? `Release ${tag}` : undefined,
		...repo,
	});

	// Form artifact data.
	const artifacts = [
		{
			path: upath.join(buildConfig.buildDestinationDirectory, "server.zip"),
			name: sanitize(`${artifactNameBody}-server.zip`),
		},
		{
			path: upath.join(buildConfig.buildDestinationDirectory, "client.zip"),
			name: sanitize(`${artifactNameBody}.zip`),
		},
		{
			path: upath.join(buildConfig.buildDestinationDirectory, "lang.zip"),
			name: "lang.zip",
		},
	];

	// Upload artifacts.
	await Bluebird.map(artifacts, async (artifact) => {
		await octokit.repos.uploadReleaseAsset({
			name: artifact.name,
			release_id: release.data.id,
			...repo,

			// Dumb workaround thanks to broken typings.
			data: ((await fs.promises.readFile(artifact.path)) as unknown) as string,
		});
	});

	await octokit.repos.updateRelease({
		release_id: release.data.id,
		draft: false,
		...repo,
	});
}

export default gulp.series(
	setupOctokit,
	fetchAndRemovePrereleaseRelease,
	fetchAndRemovePrereleaseTag,
	renameArtifactsAndUpload,
);
