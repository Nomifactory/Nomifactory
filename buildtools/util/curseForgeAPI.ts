import bluebird from "bluebird";
import { CurseForgeFetchedFileInfo, CurseForgeModInfo as CurseForgeProject } from "../types/curseForge";
import log from "fancy-log";
import request from "requestretry";

export async function fetchProject(toFetch: number): Promise<CurseForgeProject> {
	return request({
		uri: `https://addons-ecs.forgesvc.net/api/v2/addon/${toFetch}`,
		json: true,
		fullResponse: false,
	});
}

export async function fetchFileInfo(projectID: number, fileID: number): Promise<CurseForgeFetchedFileInfo> {
	return request({
		uri: `https://addons-ecs.forgesvc.net/api/v2/addon/${projectID}/file/${fileID}`,
		json: true,
		fullResponse: false,
	});
}

/**
 * Fetches multiple CurseForge projects.
 * Falls back to fetchModInfo in case it's impossible to bulk-fetch some projects.
 *
 * @param toFetch Project IDs to fetch.
 * @returns CurseForge project infos.
 */
export async function fetchProjectsBulk(toFetch: number[]): Promise<CurseForgeProject[]> {
	const modInfos: CurseForgeProject[] = await request.post({
		uri: "https://addons-ecs.forgesvc.net/api/v2/addon/",
		json: toFetch,
		fullResponse: false,
	});

	if (!modInfos || modInfos.length === 0) {
		throw new Error("Couldn't fetch mods due to empty response");
	}

	// In case we haven't received the proper amount of mod infos,
	// try requesting them individually.
	if (modInfos.length !== toFetch.length) {
		const modInfoIDs = new Set(modInfos.map((mi) => mi.id));
		const toFetchMissing = [...new Set(toFetch.filter((x) => !modInfoIDs.has(x)))];

		log.warn(`Couldn't fetch next project IDs in bulk: ${toFetchMissing.join(", ")}`);

		// Try fetching mods individually, in case they've been deleted.
		let count = 0;
		const missingModInfos: CurseForgeProject[] = await bluebird.map(toFetchMissing, async (id) => {
			log.info(`Fetching project ID ${id} directly... (${++count} / ${toFetchMissing.length})`);

			try {
				// In case something fails to download; catch, rewrite, rethrow.
				return fetchProject(id);
			} catch (err) {
				err.message = `Couldn't fetch project ID ${id}. ${err.message || "Unknown error"}`;
				throw err;
			}
		});

		// The code above is expected to throw and terminate the further execution,
		// so we can just do this.
		modInfos.push(...missingModInfos);
	}

	return modInfos;
}
