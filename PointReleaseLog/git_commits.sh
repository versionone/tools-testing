printf "Finding assets in latest 15.3 build\n" >point_release_commits.txt
git checkout 15.3
git pull --ff-only
TAG=$(git describe --abbrev=0 --tags)
echo $TAG
printf "git log $TAG..15.3 | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq\n" >>point_release_commits.txt
git log $TAG..15.3 | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq >>point_release_commits.txt 2>&1

printf "\nFinding assets in latest 16.0 build\n" >>point_release_commits.txt
git checkout 16.0
git pull --ff-only
TAG=$(git describe --abbrev=0 --tags)
echo $TAG
printf "git log $TAG..16.0 | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq\n" >>point_release_commits.txt
git log $TAG..16.0 | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq >>point_release_commits.txt 2>&1

printf "\nFinding assets in latest 16.1 build\n" >>point_release_commits.txt
git checkout 16.1
git pull --ff-only
TAG=$(git describe --abbrev=0 --tags)
echo $TAG
printf "git log $TAG..16.1 | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq\n" >>point_release_commits.txt
git log $TAG..16.1 | grep -o -E '[A-Z]{1,2}-[0-9]{5}' | sort |uniq >>point_release_commits.txt 2>&1
