# Get started with Chef Infra

###############################################################################
# Configure your workstation

# can access Chef Workstation
chef --version

# verify VirtualBox is installed
VBoxManage --version

# verify that Vagrant is installed
vagrant --version

# make directory
mkdir learn-chef-infra
cd learn-chef-infra
###############################################################################
# Prep a test env_feature

# create minimal file  structure
chef generate cookbook learn_chef

# validate kitchen.yml & list instances info in test env_feature
cd learn_chef/
kitchen list

# create test instances
kitchen create

# log into the machine
kitchen login centos
kitchen login ubuntu
###############################################################################
# Write Infra code

# create file & write resources
vi learn-chef-infra/learn_chef/recipes/learn-chef.yml

# use include_recipe method, in recipes/default.rb to include above file
# include_recipe "learn_chef::learn-chef"

# deploy your changes using the Test Kitchen command
kitchen converge

# by login, verify that the MOTD file was configured properly
# the contents of /etc/motd will be printed on the command line when a user logs in
# Learning Chef is fun with YAML!
kitchen login centos
kitchen login ubuntu
###############################################################################
# Configure a web server

# create web.yml
touch learn-chef-infra/learn_chef/recipes/web.yml

# update the default.rb to point at your new recipe.
# include_recipe "learn_chef::web"

# deploy changes to ubuntu
kitchen converge ubuntu

# verify by login & view the web server's homepage
kitchen login ubuntu
curl localhost # nothing shown, as content is not included

# exit and clean up your testing env_feature and delete your test instances
kitchen destroy
###############################################################################
