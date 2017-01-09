# 3_Start Using ChefDK

# check below files
# default-attributes
# default-recipe
# metadata.rb
# roles-starter.rb

cd chef-repo/cookbooks
ls

# creating first cookbook
chef generate cookbook lab-linux
cd lab-linux
ls

# make Apache recipe
touch recipes/apache.rb

# make role for lab-linux cookbook
touch roles/lab-linux.rb
cat roles/starter.rb > roles/lab-linux.rb

# clone windows cookbook
git clone https://github.com/chef-cookbooks/windows.git ./windows

# create new cookbook
chef generate cookbook lab-windows
cd  lab-windows

# change/add files & upload to chef-server
# check no. of cookbook available
cd chef-repo/cookbooks
knife cookbook list
knife cookbook upload --all

# get below error
# ERROR: Cookbook windows depends on cookbooks which are not currently
# ERROR: being uploaded and cannot be found on the server.
# ERROR: The missing cookbook(s) are: 'ohai' version '>= 4.0.0'
git clone https://github.com/chef-cookbooks/ohai.git
git clone https://github.com/chef-cookbooks/compat_resource.git

# upload again & check the list
knife cookbook upload --all
knife cookbook list

# check same for roles
cd chef-repo/roles
knife role list

# tell chef-server to crate a role from file
knife role from file lab-linux.rb
knife role from file lab-windows.rb
knife role list

# check cookbooks on chef-server in 'Policy' tab & 'roles' option on left hand side
