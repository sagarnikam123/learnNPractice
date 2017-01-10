# 2_Bootstrap Client Servers Using Knife

# check no. of node associated with chef server
cd pluralSight/planningAndInstallingChef/chef-repo
knife node list

# do ssl check before
knife ssl check

# boostrap node
knife bootstrap 54.169.164.70 -N sagarnikam1232b.mylabserver.com -x user -P 123456 --sudo --verbose

# check node associated
knife node list

# user winrm to connect to windows machine 
