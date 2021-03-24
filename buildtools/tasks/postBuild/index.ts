import gulp from "gulp";
import sanitize from "sanitize-filename";
import fs from "fs";
import buildConfig from "../../buildConfig";
import upath from "upath";
import { modpackManifest } from "../../globals";

/**
 * Rename built artifacts.
 */
async function renameArtifacts() {
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
		artifactNameBody = `${modpackManifest.name}-${tag}`;
	} else {
		const shortCommit = process.env.GITHUB_SHA.substr(0, 7);
		artifactNameBody = `${modpackManifest.name}-${branch}-${shortCommit}`;
	}

	// Rename the client artifact.
	await fs.promises.rename(
		upath.join(buildConfig.buildDestinationDirectory, "server.zip"),
		upath.join(buildConfig.buildDestinationDirectory, sanitize(`${artifactNameBody}-server.zip`)),
	);

	// Rename the server artifact.
	await fs.promises.rename(
		upath.join(buildConfig.buildDestinationDirectory, "client.zip"),
		upath.join(buildConfig.buildDestinationDirectory, sanitize(`${artifactNameBody}-client.zip`)),
	);
}

export default gulp.series(renameArtifacts);
