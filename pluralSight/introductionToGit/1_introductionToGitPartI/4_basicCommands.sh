# initialize git project
git init
ls -la

ls -la .git

# ignoring few things (.gitignore stays in project)
touch .gitignore
ls -la

vi .gitignore
# *.log
# db/schema.rb
# db/schema.sql

# checking exclude file (our personal copy)
cat .git/info/exclude

# make some test files & test project structure
touch Rakefile
mkdir lib
mkdir spec
touch lib/.DS_Store
touch lib/time_travel.rb
touch spec/time_travel_spec.rb

# adding everying/each file for staging area
git add .

# chekcing status
git status

# commiting
git commit -m "first import"

# check which files gets commited
git ls-files

# change .gitignore file to exclude .DS_Store & remove it from git
# .DS_Store
vi .gitignore
git rm lib/.DS_Store
git status

# commiting to all these changes at once in current directory
git commit -a
# Ignoring OS-specific files

# add some text to files
nano lib/time_travel.rb
#describe Timetravel do
#
#	it "should travel from one year to another"
#
#do

git status
git add lib/time_travel.rb

# commit with diff of all content in ur message
git commit -v
# Added a spec about travel

# chekcing git log
git log
# with graph
git log --stat

# with detailed log
git log -p
