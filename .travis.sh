set -e

REGEX_SLUG="(.+)/(.+)"
[[ $TRAVIS_REPO_SLUG =~ $REGEX_SLUG ]]
REPO_NAME=${BASH_REMATCH[2]}

releaseName=""

if [ ! -z "$TRAVIS_TAG" ]
then
	export TAGGED_RELEASE=true

	releaseName="${REPO_NAME}-${TRAVIS_TAG}"
else
	export TAGGED_RELEASE=false
	
	shortCommit="${TRAVIS_COMMIT:0:7}"
	releaseName="${REPO_NAME}-${TRAVIS_BRANCH}-${shortCommit}-snapshot"
fi

export CLIENT_ARCHIVE="${releaseName}"
export SERVER_ARCHIVE="${releaseName}-server"

gulp buildAll

mv ../build/client.zip ../build/$CLIENT_ARCHIVE.zip
mv ../build/server.zip ../build/$SERVER_ARCHIVE.zip

echo "Release = ${releaseName}"
echo "Tagged release = ${TAGGED_RELEASE}"
