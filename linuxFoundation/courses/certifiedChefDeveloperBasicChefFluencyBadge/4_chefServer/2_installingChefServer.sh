# 2_Installing Chef Server

# spinup Chef-enterprise server from Linux Academy

# go to root user
su
cd

# installing
rpm -Uvh chef-server-core-12.8.0-1.el7.x86_64.rpm

# reconfig chef server
chef-server-ctl reconfigure

# create a user
# <username>  <firstname> <lastname>  <email> <'password'>  <rsa-key-name>
chef-server-ctl user-create sagarnikam123 Sagar Nikam sagar.nikam@hotmail.com '123456' --filename sagar-user-rsa

# listing users
chef-server-ctl user-list

# create organization
# where all cookbooks, node data resides
# associate admin user here
# <shortOrgName>  <Full org name>
chef-server-ctl org-create linuxacademy 'Linux Academy Inc' --association_user sagarnikam123 --filename linuxacademy-validator.pem

# delete organization (if something fails in above command)
chef-server-ctl org-delete linuxacademy

# install Chef-manage broswer UI
chef-server-ctl install chef-manage

# reconfigure chef-manage UI
# type 'yes' to accept license agreement
chef-manage-ctl reconfigure

# open in broswer
# copy public_IP/public hostname/login
sagarnikam1232.mylabserver.com/login
