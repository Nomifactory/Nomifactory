const path = require("path").posix;
const fs = require("fs");

const DEST_FOLDER        = global.CONFIG.buildDestinationDirectory;
const SHARED_DEST_FOLDER = path.join(DEST_FOLDER, "shared");

const scannableConfigFile = "config/scannable.cfg";

/**
 * Transform the scannable config.
 * Trim excess newlines and remove comments.
 */
async function transformScannable(cb) {
	const configPath = path.join(
		SHARED_DEST_FOLDER, global.OVERRIDES_FOLDER, scannableConfigFile
	);

	const contents = (await fs.promises.readFile(configPath))
		.toString()
		// Match arrays (S:array < ... >)
		.replace(/([ \t]+)(S:\w+) <([^>]+)>/g, (_, g0, g1, g2) => {
			const body = g2
				.replace(/#[^\r\n]+/gm, "")     // Comments
				.replace(/^\s+$/gm, "")         // Trailing whitespaces
				.replace(/[\r\n]{2,}/gm, "\n"); // Extra newlines

			return g0 + g1
				+ ` <`
				+ body + (body ? "" : "\n")
				+ g0 + ` >`;
		});

	await fs.promises.writeFile(configPath, contents);

	cb();
}

module.exports = transformScannable;
