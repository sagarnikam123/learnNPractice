# 2_Managing Node Run_Lists

# checking no of nodes(which can run chef-client) attached to server
knife node list

# adding runlist to ur node
knife node run_list add sagarnikam1233.mylabserver.com 'recipe[apache]'

# view run list associated with node
knife node show sagarnikam1233.mylabserver.com
# everything about the node object
knife node show -l sagarnikam1233.mylabserver.com

# checking why-run (what happens when chef-client runs) on node
# not enforcing chef configuration
chef-client --why-run

# check if apache service started on system
systemctl status httpd

# index.html file is not created
# edit default.rb to add websites.rb
vim default.rb
# include_recipe 'apache::websites'

# chanage recipe version in metabdata.rb
vim metadata.rb

# revmoe include_recipe from default.rb & manually add to run list
vim default.rb
knife node run_list add sagarnikam1233.mylabserver.com 'recipe[apache::websites]'

# execute chef-client on node
chef-client

# chaning execution mode of recipe
# -b (before)
# -a (after)
knife node run_list add sagarnikam1233.mylabserver.com 'recipe[apache::websites]' -b 'recipe[apache]'

# removing multiple run_list
knife node run_list remove sagarnikam1233.mylabserver.com 'recipe[apache::websites], recipe[apache]'

# chef if node has any recipe to run
chef-client

# add again
knife node run_list add sagarnikam1233.mylabserver.com 'recipe[apache],recipe[apache::websites]'
