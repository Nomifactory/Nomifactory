const vars = [
	"GITHUB_TOKEN",
	"TRAVIS_REPO_SLUG",
	"TRAVIS_COMMIT",
	"TRAVIS_BRANCH",
]

/**
 * Check required env. variables for vailidity and cancel
 * the build if something is unset.
 */
function checkEnvironmentalVariables(cb) {
	vars.forEach(vari => {
		if (!process.env[vari] || process.env[vari] == "") {
			cb(`Environmental variable ${vari} is unset.`);
		}
	})

	if (!(/.+\/.+/.exec(process.env.TRAVIS_REPO_SLUG))) {
		cb(`Malformed repository slug.`);
	}

	cb();
}

module.exports = [
	checkEnvironmentalVariables
]
