# 7_sed - Easily replace strings across files

################################################################################
git clone https://github.com/kubernetes/kubernetes
cd kubernetes
cat README.md

sed 's/kubernetes/coolbernetes/' README.md # matches first result in line
sed 's/kubernetes/coolbernetes/g' README.md # sets globally
echo **/*.go # which files are in next/1st directory with .go extension
echo **/**/*.go # which files are in 2nd directory with .go extension
echo **/**/*.go | sed 's/ /\n/g' # append new line to above output
echo **/**/*.go | sed 's/ /\n/g' | wc -l # no of files with go extension
################################################################################
find . -name "*.go" # find recursively with go extension
find . -name "*.go" | xargs echo

find . -name "*.go" | xargs sed -i 's/docker/dogecker/g' # replaces word in each file
git status # view list of modified filenames
git diff # check replacement
git restore * # back to as it is
################################################################################
find . -name "*.go" | head | xargs sed -i 's#docker\/docker#dogeker\/awesomedogeker#g' # with diff separator(Not working)

cat README.md | sed 's/kubernetes/coolbernetes/g' # simple replacement
cat README.md | sed 's#kubernetes#coolbernetes#g' # with diff separator works
cat README.md | grep 'kubernetes/kubernetes'
cat README.md | grep 'kubernetes/kubernetes' | sed 's#kubernetes/kubernetes#k8/k8#g' # with diff separator works
################################################################################
