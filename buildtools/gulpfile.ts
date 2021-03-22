import * as gulp from "gulp";

import sharedTasks from "./tasks/shared";
import clientTasks from "./tasks/client";
import serverTasks from "./tasks/server";
export const buildClient = gulp.series(sharedTasks, clientTasks);
export const buildServer = gulp.series(sharedTasks, serverTasks);
export const buildAll = gulp.series(sharedTasks, gulp.parallel(clientTasks, serverTasks));
