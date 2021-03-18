import buildConfig from "./util/buildConfig.default.json";
import fs from "fs";

console.log("config executed");

if (fs.existsSync("./config.json")) {
	Object.assign(buildConfig, fs.readFileSync("./config.json").toJSON());
}

export default buildConfig;
