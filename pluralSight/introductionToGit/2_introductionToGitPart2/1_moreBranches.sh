# make some structures on master
mkdir log
touch log/travel.log
touch spec/human_spec.rb

nano lib/vegetable.rg
#class Vegetable < TimeTravel
#
#end

nano spec/time_travel_spec.rb
# it "should keep object type of  traveller"

# create new branch
git checkout -b vegetable
git branch

# stash chagnes & work on diff. things
git stash save "Started vegetable branch"

# switch to master
git checkout master
nano lib/time_travel.rb
#class TimeTravel
#
#	attr_accessor :year
#
#	##
#	# This will setup the time travel object.
#
#	def initialize
#
#	end
#
#	def travel(to_date)
#		@year = to_date
#	end
#end

git add lib/time_travel.rb
git commit -v
# Fixed bug where travel method wasn't implemented

git checkout vegetable

# view what is in the 'stash'
git stash list
# apply
git stash apply

# delete branch
git branch -d human
# delete unmerged/uncommited branch (forcefully)
git branch -D vegetable

# removing stash
git stash clear
