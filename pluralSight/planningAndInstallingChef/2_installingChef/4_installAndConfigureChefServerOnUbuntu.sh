# 4_Install and Configure Chef Server on Ubuntu

# downloading & install chef-server on Ubuntu 16.04
wget -P /tmp https://packages.chef.io/files/stable/chef-server/12.11.1/ubuntu/16.04/chef-server-core_12.11.1-1_amd64.deb
dpkg -i /tmp/chef-server-core_12.11.1-1_amd64.deb

# for CentOS/RedHat
wget https://packages.chef.io/files/stable/chef-server/12.11.1/el/7/chef-server-core-12.11.1-1.el7.x86_64.rpm
rpm -Uvh chef-server-core-12.11.1-1.el7.x86_64.rpm

# configuring for firstime
chef-server-ctl reconfigure

# creating credentials
sudo mkdir /home/jenkins/certs
# sudo chef-server-ctl user-create USER_NAME FIRST_NAME [MIDDLE_NAME] LAST_NAME EMAIL 'PASSWORD' (options)
sudo chef-server-ctl user-create jenkins Jenkins Baba sagarnikam123@gmail.com 123456 --filename /home/jenkins/certs/jenkins.pem

# for Linux Academy server
sudo mkdir /home/user/certs
sudo chef-server-ctl user-create chefcentos ChefLinux Baba sagarnikam123@gmail.com 123456 --filename /home/user/certs/user.pem

# creating organization
# sudo chef-server-ctl org-create ORG_NAME "ORG_FULL_NAME" (options)
sudo chef-server-ctl org-create jenkinschef ChefOrg --association_user jenkins --filename /home/jenkins/certs/jenkins.pem
sudo chef-server-ctl org-create cheforg ChefOrganization --association_user chefcentos --filename /home/user/certs/user.pem
# chef-server-ctl org-user-add ORG_NAME USER_NAME (options)
sudo chef-server-ctl org-user-add cheforg chefcentos --admin
