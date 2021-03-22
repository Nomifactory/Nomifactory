import buildConfig from "./buildConfig";
import upath from "upath";
import manifest from "./../manifest.json";

export const sharedDestDirectory = upath.join(buildConfig.buildDestinationDirectory, "shared");
export const clientDestDirectory = upath.join(buildConfig.buildDestinationDirectory, "client");
export const serverDestDirectory = upath.join(buildConfig.buildDestinationDirectory, "server");
export const tempDirectory = upath.join(buildConfig.buildDestinationDirectory, "temp");
export const modpackManifest = manifest;
export const overridesFolder = manifest.overrides || "overrides";
