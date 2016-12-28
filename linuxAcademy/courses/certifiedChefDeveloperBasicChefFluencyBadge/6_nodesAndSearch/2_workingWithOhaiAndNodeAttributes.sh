# 2_Working With Ohai and Node Attributes

# shows data collected by ohai (on node)
ohai

# shows particular detail
ohai ipaddress
ohai hostname
ohai | grep ipaddress
ohai | grep swap
ohai platform_family

ruby -c default.rb motd.rb
foodcritic default.rb motd.rb

# change version in metadata.rb
# do git add, commit, push

# upload to the server
knife cookbook upload apache

# add motd recipe to run list
knife node run_list add sagarnikam1233.mylabserver.com 'recipe[motd]'
knife node run_list remove sagarnikam1233.mylabserver.com 'recipe[motd]'

knife node run_list add sagarnikam1233.mylabserver.com 'recipe[apache::motd]'

# run chef client on node
chef-client

# check motd file with ohai value
cat /etc/motd
ohai hostname
