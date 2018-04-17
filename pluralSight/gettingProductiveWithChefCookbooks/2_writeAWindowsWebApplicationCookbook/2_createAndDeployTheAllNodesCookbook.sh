# 2_Create and Deploy the all-nodes Cookbook

chef generate repo pluralsight-chef-cookbooks
cd pluralsight-chef-cookbooks/
cd cookbooks/
chef generate cookbook all-nodes


# installing berkshelf (cookbook manager)
berks install
# view installed
ls $HOME/.berkshelf/cookbooks/

# checking which roles exists on server
knife role list
