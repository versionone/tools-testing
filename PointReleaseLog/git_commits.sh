BRANCH="15.3"
printf "Finding workitems in latest $BRANCH build since last point release\n" >point_release_commits.txt
git checkout $BRANCH
git pull --ff-only
TAG=$(git describe --abbrev=0 --tags)
echo $TAG
printf "git log $TAG..$BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq\n" >>point_release_commits.txt
git log $TAG..$BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq >>point_release_commits.txt 2>&1

BRANCH="16.0"
printf "\nFinding workitems in latest $BRANCH build since last point release\n" >>point_release_commits.txt
git checkout $BRANCH
git pull --ff-only
TAG=$(git describe --abbrev=0 --tags)
echo $TAG
printf "git log $TAG..$BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq\n" >>point_release_commits.txt
git log $TAG..$BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq >>point_release_commits.txt 2>&1

BRANCH="16.1"
printf "\nFinding workitems in latest $BRANCH build since last point release\n" >>point_release_commits.txt
git checkout $BRANCH
git pull --ff-only
TAG=$(git describe --abbrev=0 --tags)
echo $TAG
printf "git log $TAG..$BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq\n" >>point_release_commits.txt
git log $TAG..$BRANCH | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq >>point_release_commits.txt 2>&1