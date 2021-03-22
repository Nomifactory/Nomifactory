interface Install {
	profileName: string;
	target: string;
	path: string;
	version: string;
	filePath: string;
	welcome: string;
	minecraft: string;
	mirrorList: string;
	logo: string;
	modList: string;
}

interface Library {
	name: string;
	url: string;
	serverreq?: boolean;
	checksums: string[];
	clientreq?: boolean;
}

interface VersionInfo {
	id: string;
	time: Date;
	releaseTime: Date;
	type: string;
	minecraftArguments: string;
	mainClass: string;
	inheritsFrom: string;
	jar: string;
	libraries: Library[];
}

export interface ForgeProfile {
	install: Install;
	versionInfo: VersionInfo;
}
