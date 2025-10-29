# 1_Setting Up A New Node

# bootstrap new node (database node)
knife bootstrap 54.169.175.100 -N sagarnikam1235.mylabserver.com -x user -P 123456 --sudo

# make postgresql Cookbook
chef generate cookbook postgresql
cd postgresql/recipes
vim default.rb

ruby -c default.rb
foodcritic default.rb
