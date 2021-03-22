interface ModLoader {
	id: string;
	primary: boolean;
}

interface Minecraft {
	version: string;
	modLoaders?: ModLoader[];
}

interface ExternalDependency {
	url: string;
	sha: string;
}

interface File {
	projectID: number;
	fileID: number;
	required: boolean;
}

export interface ModpackManifest {
	minecraft: Minecraft;
	manifestType: string;
	manifestVersion: number;
	name: string;
	version: string;
	author: string;
	projectID: number;
	externalDependencies?: ExternalDependency[];
	files: File[];
	overrides: string;
}
