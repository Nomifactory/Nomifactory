require("./globals");

const del  = require("del");
const path = require("path").posix;

const { series } = require("gulp");

const DEST_FOLDER = global.CONFIG.buildDestinationDirectory;
const TEMP_FOLDER = path.join(DEST_FOLDER, "temp");

/**
 * Clean-up. Recursively removes the destination folder.
 */
function cleanup(cb) {
	del(DEST_FOLDER, { force: true }).then(() => cb());
}

/**
 * Post-cleanups.
 */
function postCleanup(cb) {
	del(TEMP_FOLDER, { force: true }).then(() => cb());
}

const sharedTasks = require("./tasks/shared");
const serverTasks = require("./tasks/server");
const clientTasks = require("./tasks/client");
const travisTasks = require("./tasks/travis");
const travisChecksTasks = require("./tasks/travis/checks");

const buildServer = series(
	cleanup,
	...sharedTasks,
	...serverTasks,
	postCleanup
);

const buildClient = series(
	cleanup,
	...sharedTasks,
	...clientTasks,
	postCleanup,
)

const buildAll = series(
	cleanup,
	...sharedTasks,
	...serverTasks,
	...clientTasks,
	postCleanup
)

const travis = series(
	...travisTasks
)

const travisChecks = series(
	...travisChecksTasks
)

module.exports = {
	buildServer: buildServer,
	buildClient: buildClient,
	buildAll: buildAll,
	travis: travis,
	travisChecks: travisChecks,
	deployCurseForge: series(require("./tasks/deploy/curseforge"))
}
