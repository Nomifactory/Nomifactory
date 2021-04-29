import bluebird from "bluebird";
import { CurseForgeFetchedFileInfo, CurseForgeModInfo as CurseForgeProject } from "../types/curseForge";
import log from "fancy-log";
import request from "requestretry";

const curseForgeProjectCache: { [key: number]: CurseForgeProject } = {};
export async function fetchProject(toFetch: number): Promise<CurseForgeProject> {
	if (curseForgeProjectCache[toFetch]) {
		return curseForgeProjectCache[toFetch];
	}

	const project: CurseForgeProject = await request({
		uri: `https://addons-ecs.forgesvc.net/api/v2/addon/${toFetch}`,
		json: true,
		fullResponse: false,
		maxAttempts: 5,
	});

	if (project) {
		curseForgeProjectCache[toFetch] = project;
	}
	return project;
}

const fetchedFileInfoCache: { [key: string]: CurseForgeFetchedFileInfo } = {};
export async function fetchFileInfo(projectID: number, fileID: number): Promise<CurseForgeFetchedFileInfo> {
	const slug = `${projectID}/${fileID}`;

	if (fetchedFileInfoCache[slug]) {
		return fetchedFileInfoCache[slug];
	}

	const fileInfo: CurseForgeFetchedFileInfo = await request({
		uri: `https://addons-ecs.forgesvc.net/api/v2/addon/${projectID}/file/${fileID}`,
		json: true,
		fullResponse: false,
	});

	if (fileInfo) {
		fetchedFileInfoCache[slug] = fileInfo;
	}

	return fileInfo;
}

/**
 * Fetches multiple CurseForge projects.
 * Falls back to fetchModInfo in case it's impossible to bulk-fetch some projects.
 *
 * @param toFetch Project IDs to fetch.
 * @returns CurseForge project infos.
 */
export async function fetchProjectsBulk(toFetch: number[]): Promise<CurseForgeProject[]> {
	const modInfos: CurseForgeProject[] = [];
	const unfetched: number[] = [];

	// Determine projects that have been fetched already.
	toFetch.forEach((id) => {
		const cached = curseForgeProjectCache[id];
		if (cached) {
			modInfos.push(cached);
		} else {
			unfetched.push(id);
		}
	});

	// Augment the array of known projects with new info.
	const fetched: CurseForgeProject[] = await request.post({
		uri: "https://addons-ecs.forgesvc.net/api/v2/addon/",
		json: unfetched,
		fullResponse: false,
		maxAttempts: 5,
	});

	modInfos.push(...fetched);

	// Cache fetched stuff.
	fetched.forEach((mi) => {
		curseForgeProjectCache[mi.id] = mi;
	});

	// In case we haven't received the proper amount of mod infos,
	// try requesting them individually.
	if (unfetched.length !== toFetch.length) {
		const modInfoIDs = new Set(modInfos.map((mi) => mi.id));
		const toFetchMissing = [...new Set(toFetch.filter((x) => !modInfoIDs.has(x)))];

		log.warn(`Couldn't fetch next project IDs in bulk: ${toFetchMissing.join(", ")}`);

		// Try fetching mods individually, in case they've been deleted.
		let count = 0;
		const missingModInfos: CurseForgeProject[] = await bluebird.map(toFetchMissing, async (id) => {
			log.info(`Fetching project ID ${id} directly... (${++count} / ${toFetchMissing.length})`);

			try {
				// In case something fails to download; catch, rewrite, rethrow.
				return await fetchProject(id);
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
