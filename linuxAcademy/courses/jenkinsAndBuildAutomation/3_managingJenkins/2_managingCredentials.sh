# Managing Credentials

# login as user

# edit line
sudo vi /etc/passwd
# jenkins:x:993:988:Jenkins Continuous Integration Server:/var/lib/jenkins:/bin/bash

sudo su jenkins -
whoami

# make jenkins user as sudoers
sudo vi /etc/sudoers
# jenkins ALL=(ALL)       NOPASSWD: ALL

# using root
su root
ssh-keygen
exit

# set pasword for jenkins
passwd jenkins

# using jenkins
# creates ssh-keygen in /var/lib/jenkins/.ssh/id_rsa
sudo su jenkins
ssh-keygen

# add Jenkins users Credentials in Global Credentials option.

# copy ssh-id to localhost, (private)internal ip, (public) external ip & FQDN
ssh-copy-id jenkins@localhost
ssh-copy-id jenkins@52.77.242.86 # public ip
ssh-copy-id jenkins@172.31.19.125 # private ip
ssh-copy-id jenkins@sagarnikam1233b.mylabserver.com

# try ssh
ssh localhost

# login to another/slave node
ssh user@54.169.84.69
adduser jenkins
passwd jenkins
# add sudoers right to this jenkins user
sudo vi /etc/sudoers

# login to first machine & copy ssh key to above/another machine
su jenkins
ssh-copy-id jenkins@54.169.84.69
ssh jenkins@54.169.84.69
