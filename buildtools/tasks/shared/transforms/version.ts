import fs from "fs";
import upath from "path";
import mustache from "mustache";
import { modpackManifest, overridesFolder, sharedDestDirectory } from "../../../globals";

const randomPatchesConfigFile = "config/randompatches.cfg";

/**
 * Transform the version field of manifest.json.
 */
export default async function transformManifestVersion(): Promise<void> {
	let versionTitle;
	if (process.env.GITHUB_TAG) {
		const flavorTitle = process.env.BUILD_FLAVOR_TITLE;

		versionTitle = [modpackManifest.name, process.env.GITHUB_TAG.replace(/^v/, ""), flavorTitle]
			.filter(Boolean)
			.join(" - ");
	} else {
		versionTitle = `${modpackManifest.name} (manual build)`;
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
