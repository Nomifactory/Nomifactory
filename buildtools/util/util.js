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

/**
 * Checks if given environmental variables are set.
 * Throws when if a variable is unset.
 * 
 * @param {string[]} vars
 * @throws
 */
exports.checkEnvironmentalVariables = (vars) => {
	vars.forEach((vari) => {
		if (!process.env[vari] || process.env[vari] == "") {
			throw new Error(`Environmental variable ${vari} is unset.`);
		}
	});
}
