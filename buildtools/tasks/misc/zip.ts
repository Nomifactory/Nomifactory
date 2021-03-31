import { clientDestDirectory, langDestDirectory, modpackManifest, serverDestDirectory } from "../../globals";
import upath from "upath";
import zip from "gulp-zip";
import gulp from "gulp";
import buildConfig from "../../buildConfig";
import { makeArtifactNameBody } from "../../util/util";
import sanitize from "sanitize-filename";

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
		sanitize((makeArtifactNameBody(modpackManifest.name) + "-server.zip").toLowerCase()),
	);
}

export async function zipClient(): Promise<void> {
	return zipFolder(
		upath.join(clientDestDirectory),
		sanitize((makeArtifactNameBody(modpackManifest.name) + "-client.zip").toLowerCase()),
	);
}

export async function zipLang(): Promise<void> {
	return zipFolder(
		upath.join(langDestDirectory),
		sanitize((makeArtifactNameBody(modpackManifest.name) + "-lang.zip").toLowerCase()),
	);
}

export const zipAll = gulp.series(zipServer, zipClient, zipLang);
