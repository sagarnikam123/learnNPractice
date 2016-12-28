# 1_Building A Quick Apache Cookbook

cd chef-repo
chef generate cookbook cookbooks/apache

cd cookbooks/apache
ls

# change maintainer & author names
vim metadata.rb

cd recipes
ruby -c default.rb
foodcritic default.rb

# making website file
vim websites.rb
ruby -c websites.rb
foodcritic websites.rb

# do foodcritic on entire apache cookbook
cd ..
cd ..
foodcritic apache

# upload cookbook to server
knife cookbook upload apache

# adding to git, commit & push
git add .
git commit -m "added basic apache cookbook"
git push -u origin master
