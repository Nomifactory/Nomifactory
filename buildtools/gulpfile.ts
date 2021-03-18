import * as gulp from "gulp";

import sharedTasks from "./tasks/shared";
import clientTasks from "./tasks/client";
export const buildClient = gulp.series(sharedTasks, clientTasks);
