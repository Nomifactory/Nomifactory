import { modpackManifest } from "../../globals";
import { makeArtifactNameBody } from "../../util/util";
import sanitize from "sanitize-filename";

export async function makeArtifactNames(): Promise<void> {
	const names = {
		client: makeArtifactNameBody(modpackManifest.name, process.env.GITHUB_REF, process.env.GITHUB_SHA) + "-client",
		server: makeArtifactNameBody(modpackManifest.name, process.env.GITHUB_REF, process.env.GITHUB_SHA) + "-server",
		lang: makeArtifactNameBody(modpackManifest.name, process.env.GITHUB_REF, process.env.GITHUB_SHA) + "-lang",
	};

	Object.keys(names).forEach((name) => {
		console.log(`::set-output name=${name}::${sanitize(names[name])}`);
	});
}
