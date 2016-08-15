# cloning
git  clone <url>

# viewing config (origin, branch & other info)
cat .git/config

git branch -a

nano lib/human.rb
# attr_accessor :age
git commit -a -v

# pushing to origin
git push

# taking all changes to master from origin
git pull

# view origin (remote) repository
git remote show origin

# create a local branch
git checkout -b dog
touch lib/dog.rb
#class Dog < TimeTravel
#
#  attr_accessor : breed
#  attr_accessor : tail
#
#end

git add lib/dog.rb
git commit -a -v
# Added tail accessor
git push
