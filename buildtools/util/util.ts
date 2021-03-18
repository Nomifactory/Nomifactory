import sha1 from "sha1";
import { FileDef } from "../types/fileDef";
import fs from "fs";
import buildConfig from "../buildConfig";
import upath from "upath";
import requestretry from "requestretry";
import http from "http";
import { compareBufferToHashDef } from "./hashes";

const LIBRARY_REG = /^(.+?):(.+?):(.+?)$/;

/**
 * Parses the library name into path following the standard package naming convention.
 *
 * Turns `package:name:version` into `package/name/version/name-version`.
 */
export const libraryToPath = (library: string): string => {
	const parsedLibrary = LIBRARY_REG.exec(library);
	if (parsedLibrary) {
		const pkg = parsedLibrary[1].replace(/\./g, "/");
		const name = parsedLibrary[2];
		const version = parsedLibrary[3];

		const newURL = `${pkg}/${name}/${version}/${name}-${version}`;

		return newURL;
	}
};

/**
 * Checks if given environmental variables are set.
 * Throws when if a variable is unset.
 */
export const checkEnvironmentalVariables = (vars: string[]): void => {
	vars.forEach((vari) => {
		if (!process.env[vari] || process.env[vari] == "") {
			throw new Error(`Environmental variable ${vari} is unset.`);
		}
	});
};

export async function downloadOrRetrieveFileDef(fileDef: FileDef): Promise<Buffer> {
	const fileNameSha = sha1(fileDef.url);

	const cachedFilePath = upath.join(buildConfig.downloaderCacheDirectory, fileNameSha);
	if (fs.existsSync(cachedFilePath)) {
		const file = await fs.promises.readFile(cachedFilePath);

		if (file.length !== 0) {
			// Check hashes.
			if (fileDef.hashes) {
				if (
					fileDef.hashes.every((hashDef) => {
						return compareBufferToHashDef(file, hashDef);
					})
				) {
					return file;
				}
			} else {
				return file;
			}
		}
	}

	if (!fs.existsSync(buildConfig.downloaderCacheDirectory)) {
		await fs.promises.mkdir(buildConfig.downloaderCacheDirectory, { recursive: true });
	}

	const handle = await fs.promises.open(cachedFilePath, "w");

	let hashFailed = false;
	const retryStrategy = (err: Error, response: http.IncomingMessage, body: unknown) => {
		// Verify hashes.
		if (!err && fileDef.hashes && body) {
			const success = fileDef.hashes.every((hashDef) => {
				return compareBufferToHashDef(body as Buffer, hashDef);
			});

			if (!success) {
				if (hashFailed) {
					throw new Error(`Couldn't verify checksums of ${upath.basename(fileDef.url)}`);
				}

				hashFailed = true;
				return true;
			}
		}
		return requestretry.RetryStrategies.HTTPOrNetworkError(err, response, body);
	};

	const data: Buffer = Buffer.from(
		await requestretry({
			url: fileDef.url,
			fullResponse: false,
			encoding: null,
			retryStrategy: retryStrategy,
		}),
	);

	await handle.write(data);
	await handle.close();

	return data;
}
