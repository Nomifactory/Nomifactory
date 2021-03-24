import * as gulp from "gulp";

import sharedTasks from "./tasks/shared";
import clientTasks from "./tasks/client";
import serverTasks from "./tasks/server";
import langTasks from "./tasks/lang";
export const buildClient = gulp.series(sharedTasks, clientTasks);
export const buildServer = gulp.series(sharedTasks, serverTasks);
export const buildLang = gulp.series(sharedTasks, langTasks);
export const buildAll = gulp.series(sharedTasks, gulp.parallel(clientTasks, serverTasks, langTasks));

import checkTasks from "./tasks/checks";
export const check = gulp.series(checkTasks);

import postBuildTasks from "./tasks/postBuild";
export const postBuild = gulp.series(postBuildTasks);
