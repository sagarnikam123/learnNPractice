# 4_Install and Configure Chef Server on Ubuntu

# downloading & install chef-server on Ubuntu 16.04
wget -P /tmp https://packages.chef.io/files/stable/chef-server/12.11.1/ubuntu/16.04/chef-server-core_12.11.1-1_amd64.deb
dpkg -i /tmp/chef-server-core_12.11.1-1_amd64.deb

# configuring for firstime
chef-server-ctl reconfigure

# creating credentials
sudo mkdir /home/jenkins/certs
sudo chef-server-ctl user-create jenkins Jenkins Baba sagarnikam123@gmail.com 123456 --filename /home/jenkins/certs/jenkins.pem

# creating organization
sudo chef-server-ctl org-create jenkinschef ChefOrg --association_user jenkins --filename /home/jenkins/certs/jenkins.pem
