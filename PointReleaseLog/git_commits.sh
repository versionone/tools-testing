cd "/c/Development/Core"

git fetch
BRANCH="origin/16.2"
printf "\nFinding workitems in latest $BRANCH build since last point release\n" >point_release_commits.txt
TAG=$(git describe $BRANCH --abbrev=0 --tags)
echo $TAG
printf "git log $TAG..$BRANCH $BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{4,6}' | sort |uniq\n" >>point_release_commits.txt
git log $TAG..$BRANCH $BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{4,6}' | sort |uniq >>point_release_commits.txt 2>&1

BRANCH="origin/16.3"
printf "\nFinding workitems in latest $BRANCH build since last point release\n" >>point_release_commits.txt
TAG=$(git describe $BRANCH --abbrev=0 --tags)
echo $TAG
printf "git log $TAG..$BRANCH $BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{4,6}' | sort |uniq\n" >>point_release_commits.txt
git log $TAG..$BRANCH $BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{4,6}' | sort |uniq >>point_release_commits.txt 2>&1

BRANCH="origin/17.0"
printf "\nFinding workitems in latest $BRANCH build since last point release\n" >>point_release_commits.txt
TAG=$(git describe $BRANCH --abbrev=0 --tags)
echo $TAG
printf "git log $TAG..$BRANCH $BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{4,6}' | sort |uniq\n" >>point_release_commits.txt
git log $TAG..$BRANCH $BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{4,6}' | sort |uniq >>point_release_commits.txt 2>&1