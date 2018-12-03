# How To Create a Pull Request on GitHub

# Fork repo from GitHub
# clone repo to local
# Create a New Branch
git branch cStarPrograms
git checkout cStarPrograms
git branch

# condense the above two commands, creating and switching to a new branch
# git checkout -b cStarPrograms

# add git files/changes
git add damru.c
git commit -m "prints 2 triangles separated by line using stars" damru.c
git status

git push --set-upstream origin cStarPrograms

# https://github.com/sagarnikam123/sample-programs/pull/new/cStarPrograms
# Update Local Repository
# Configure a Remote for the Fork
git remote -v

# adding upstream
git remote add upstream https://github.com/TheRenegadeCoder/sample-programs.git
# Sync the Fork
git fetch upstream
git checkout master
git merge upstream/master
