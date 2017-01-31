#cd "/c/Development/Core"
git fetch
printf "" > point_release_commits.txt

function getCommitsSinceLastTag ()
{
	BRANCH=$1
	printf "\nFinding workitems in latest $BRANCH build since last point release\n" >>point_release_commits.txt
	TAG=$(git describe $BRANCH --abbrev=0 --tags)
	echo $TAG
	printf "git log $TAG..$BRANCH $BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{4,6}' | sort |uniq\n" >>point_release_commits.txt
	git log $TAG..$BRANCH $BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{4,6}' | sort |uniq >>point_release_commits.txt 2>&1
}

for version in "$@"
do
    getCommitsSinceLastTag "origin/$version"
done