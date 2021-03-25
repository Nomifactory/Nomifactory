import { clientDestDirectory, langDestDirectory, modpackManifest, serverDestDirectory } from "../../globals";
import upath from "upath";
import zip from "gulp-zip";
import gulp from "gulp";
import buildConfig from "../../buildConfig";
import { makeArtifactNameBody } from "../../util/util";

async function zipFolder(path: string, zipName: string = upath.basename(path) + ".zip"): Promise<void> {
	return new Promise((resolve) => {
		gulp
			.src(upath.join(path, "**"), { nodir: true, base: path })
			.pipe(zip(zipName))
			.pipe(gulp.dest(buildConfig.buildDestinationDirectory))
			.on("end", resolve);
	});
}

export async function zipServer(): Promise<void> {
	return zipFolder(
		upath.join(serverDestDirectory),
		makeArtifactNameBody(modpackManifest.name, process.env.GITHUB_REF, process.env.GITHUB_SHA) + "-server.zip",
	);
}

export async function zipClient(): Promise<void> {
	return zipFolder(
		upath.join(clientDestDirectory),
		makeArtifactNameBody(modpackManifest.name, process.env.GITHUB_REF, process.env.GITHUB_SHA) + "-client.zip",
	);
}

export async function zipLang(): Promise<void> {
	return zipFolder(
		upath.join(langDestDirectory),
		makeArtifactNameBody(modpackManifest.name, process.env.GITHUB_REF, process.env.GITHUB_SHA) + "-lang.zip",
	);
}

export const zipAll = gulp.parallel(zipServer, zipClient, zipLang);
