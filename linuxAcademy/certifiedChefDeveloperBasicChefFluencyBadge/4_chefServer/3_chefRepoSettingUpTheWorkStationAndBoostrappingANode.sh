# 3_Chef-Repo, Setting Up the Work Station, and Boostrapping A Node

# copy chef-starter.zip kit to chef-workstation
scp /home/quanta/Downloads/chef-starter.zip user@54.254.235.163:~/

#install upzip on workstation
sudo yum install unzip

# add user to wheel group
sudo usermod -g wheel user

# unzip the starter kit
sudo unzip chef-starter.zip

# revmoe starter kit
rm -rf chef-starter.zip

# go to chef-repo directly & see it
cd chef-repo
ls
ls -al
cd .chef
ls
cat knife.rb

# adding access certificate of chef-server into workstation
# Adding certificate for sagarnikam1232_mylabserver_com in /home/user/chef-repo/.chef/trusted_certs/sagarnikam1232_mylabserver_com.crt
sudo knife ssl fetch

# take other machines/node & grab public ip
ssh user@52.221.247.64
# change root passwd
sudo passwd root

# check user's group
groups user
# adding user to wheel group
usermod -g wheel user
# exit from that node
exit
exit

# come on workstation
# -N -> node name (by default hostname of node)
cd chef-repo
knife bootstrap 52.221.247.64 -N sagarnikam1233.mylabserver.com --ssh-user user --sudo

# after succesful go to Enterprise chef-server browser & check for node
