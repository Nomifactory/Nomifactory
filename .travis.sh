set -e

if [ -z "$TRAVIS_REPO_SLUG" ]
then
	echo "Invalid repository slug."
	exit 1
fi

if [ -z "$TRAVIS_COMMIT" ]
then
	echo "Invalid commit hash."
	exit 1
fi

if [ -z "$TRAVIS_BRANCH" ]
then
	echo "Invalid branch."
	exit 1
fi

REGEX_SLUG="(.+)/(.+)"
[[ $TRAVIS_REPO_SLUG =~ $REGEX_SLUG ]]
REPO_NAME=${BASH_REMATCH[2]}

if [ -z "$REPO_NAME" ]
then
	echo "Malformed repository name."
	exit 1
fi

releaseName=""

if [ ! -z "$TRAVIS_TAG" ]
then
	export TAGGED_RELEASE=true

	releaseName="${REPO_NAME}-${TRAVIS_TAG}"
else
	export TAGGED_RELEASE=false
	
	shortCommit="${TRAVIS_COMMIT:0:6}"
	releaseName="${REPO_NAME}-${TRAVIS_BRANCH}-${shortCommit}-snapshot"
fi

export CLIENT_ARCHIVE="${releaseName}"
export SERVER_ARCHIVE="${releaseName}-server"

gulp buildAll

mv ../build/client.zip ../build/$CLIENT_ARCHIVE.zip
mv ../build/server.zip ../build/$SERVER_ARCHIVE.zip

if [ $TAGGED_RELEASE = false ]
then
    git config --local user.name $GITHUB_USER
    git config --local user.password $GITHUB_TOKEN
	set +e
	hub release delete latest-dev-preview
	git push --delete origin latest-dev-preview
	set -e
fi

echo "Release = ${releaseName}"
echo "Tagged release = ${TAGGED_RELEASE}"
