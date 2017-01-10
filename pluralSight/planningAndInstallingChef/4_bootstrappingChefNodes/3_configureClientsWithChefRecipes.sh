# 3_Configure Clients with Chef Recipes

# ssh to ubuntu machine
ssh user@54.169.164.70

# running chef-client
sudo chef-client

# assign client to roles
# knife node run_list add [NODE] [ENTRY[,ENTRY]] (options)
# knife node run_list remove [NODE] [ENTRY[,ENTRY]] (options)
knife node run_list add sagarnikam1232b.mylabserver.com "role[lab-linux]"

# manually execute the run_list by going to ubuntu node
sudo chef-client

# change httpd to apache2 in recipe & upload new one
knife cookbook upload lab-linux
knife cookbook list

# check apache2 runnig status
sudo service apache2 status

# use public ip/FQDN of ubuntu in browser

# upload updated windows recipe
knife cookbook upload lab-windows
knife cookbok list
