import { clientDestDirectory, modpackManifest } from "../../globals";
import { fetchMods } from "../../util/curseForgeAPI";

/**
 * Downloads client mods according to manifest.json and checks hashes.
 */
export async function downloadClientMods(): Promise<void[]> {
	return fetchMods(
		modpackManifest.files.filter((f) => !f.sides || f.sides.includes("client")),
		clientDestDirectory,
	);
}
