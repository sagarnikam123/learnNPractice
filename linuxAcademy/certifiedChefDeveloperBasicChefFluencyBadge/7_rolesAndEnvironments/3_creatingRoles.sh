# 3_Creating Roles

# generate env variable for editor
export EDITOR=$(which vim)

# creating a Roles
knife role create web
# editing a role
knife role edit web

# assigning a role to node
knife node run_list set sagarnikam1234.mylabserver.com "role[web]"

# view assigned role
knife node show sagarnikam1234.mylabserver.com

# edit web role & remove motd
knife role edit web

# executing chef-client on nodes remotely
knife ssh 'role:web' 'sudo chef-client' -x user -P 123456

# upload postgresql cookbook
knife cookbook upload postgresql

# create database role
knife role create database

# assign database role to a node
knife node run_list set sagarnikam1235.mylabserver.com 'role[database]'

# run chef-client on node with role as a web
knife ssh 'role:web' 'sudo chef-client' -x user -P 123456

# add action immediately to postgresql's default
vim default.rb

# upload cookbook
knife cookbook upload postgresql

# execute remotely chef-client
sudo knife ssh "role:database" "sudo chef-client" -x user -P 123456

# check service status remotely
sudo knife ssh "role:database" "sudo systemctl status postgresql" -x user -P 123456

# check run list
knife node show sagarnikam1235.mylabserver.com
