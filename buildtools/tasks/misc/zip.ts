import {
	clientDestDirectory,
	langDestDirectory,
	mmcDestDirectory,
	modpackManifest,
	serverDestDirectory,
} from "../../globals";
import upath from "upath";
import zip from "gulp-zip";
import gulp from "gulp";
import buildConfig from "../../buildConfig";
import { makeArtifactNameBody } from "../../util/util";
import sanitize from "sanitize-filename";

async function zipFolder(path: string, zipName: string = upath.basename(path) + ".zip"): Promise<void> {
	return new Promise((resolve) => {
		gulp
			.src(upath.join(path, "**"), { nodir: true, base: path, dot: true })
			.pipe(zip(zipName))
			.pipe(gulp.dest(buildConfig.buildDestinationDirectory))
			.on("end", resolve);
	});
}

function makeZipper(src: string, artifactName: string) {
	return () => {
		return zipFolder(
			upath.join(src),
			sanitize((makeArtifactNameBody(modpackManifest.name) + `-${artifactName}.zip`).toLowerCase()),
		);
	};
}

export const zipServer = makeZipper(serverDestDirectory, "server");
export const zipClient = makeZipper(clientDestDirectory, "client");
export const zipLang = makeZipper(langDestDirectory, "lang");
export const zipMMC = makeZipper(mmcDestDirectory, "mmc");

export const zipAll = gulp.series(zipServer, zipClient, zipLang);
