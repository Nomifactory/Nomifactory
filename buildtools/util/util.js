const LIBRARY_REG = /^(.+?):(.+?):(.+?)$/;

/**
 * Parses the library name into path following the standard package naming convention.
 * 
 * Turns `package:name:version` into `package/name/version/name-version`.
 * 
 * @param {string} library 
 */
exports.libraryToPath = (library) => {
	const parsedLibrary = LIBRARY_REG.exec(library);
	if (parsedLibrary) {
		const package = parsedLibrary[1].replace(/\./g, "/");
		const name = parsedLibrary[2];
		const version = parsedLibrary[3];

		const newURL = `${package}/${name}/${version}/${name}-${version}`

		return newURL;
	}
}