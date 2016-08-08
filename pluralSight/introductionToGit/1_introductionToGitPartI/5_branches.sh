# open project in gitk
sudo apt-get install gitk
cd tryGit/
gitk --all
# opening in background
gitk --all &

# editing config file for gitk
sudo gedit $HOME/.gitk

# check on which current branch
git branch
git branch --color

# create new branch
git branch human
# switch to new branch
git checkout human

# make file & add some text & commit
touch lib/human.rb
nano lib/human.rb
# class Human < TimeTravel
#
# end
git add lib/human.rb
git status
git commit -v

# go to master & check for human.rb
git checkout master
git checkout Human
nano lib/human.rb
# def initializer
#   super
# end
git add lib/human.rb
git commit -m "Human initializer"

#
git checkout master
nano spec/time_travel_spec.rb
#describe TimeTravel do
#
#	it "should travel from one year to another"
#	it "should should keep age of traveller when moving between years"
#
#end
git commit -v -a
# check graphical
gitk --all &

# switch to human & merged human into master
git checkout human
git rebase master

# checking the changes in two branches
git diff master human
# merging
git merger human

# reverting to one step past
git reset --hard ORIG_HEAD
