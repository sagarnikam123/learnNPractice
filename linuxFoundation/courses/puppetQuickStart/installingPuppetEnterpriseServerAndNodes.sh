# Installing Puppet Enterprise Server and Nodes

# login to centos-7
ssh user@52.77.250.185
ssh user@sagarnikam3211.mylabserver.com

# making free port 8140
yum install firewalld -y
systemctl enable firewalld
systemctl start firewalld
systemctl status firewalld

# for centos-7
firewall-cmd --zone=public --add-port=8140/tcp --permanent
firewall-cmd --zone=public --add-port=3000/tcp --permanent

# reload IPTables configuration
firewall-cmd --reload

sudo nano /etc/hosts
# config
# 127.0.0.1   sagarnikam3211.mylabserver.com localhost localhost.localdomain localhost4 localhost4.localdomain4
# ::1         localhost localhost.localdomain localhost6 localhost6.localdomain6

# restart network service
sudo systemctl restart network

#puppet Enterprise already install in
cd /root/puppet-enterprise-2016.2.1-el-7-x86_64
ls -la

# running installer
./puppet-enterprise-installer
# choose guided installation option [1]
# go to in browser - https://sagarnikam3211.mylabserver.com:3000 & deploy
# FQDN sagarnikam3211.mylabserver.com
# Puppet master DNS aliases - puppet
# username - admin
# password - admin123

# rung to complete setup of system
puppet agent -t

# installing puppet-aget on each node
ssh user@52.77.212.11
ssh user@sagarnikam3214.mylabserver.com

# In the console, click Nodes > Classification, and in the PE Infrastructure group, select the PE Masters group.
# On the Classes tab in the Class name field, enter pe_repo and select the repo class from the list of classes.
# Note: the repo classes are listed as pe_repo::platform::<AGENT_OS_VERSION_ARCHITECTURE>
# Click Add class, and commit changes.
# Run puppet agent -t to configure the Puppet master node using the newly assigned class.
# The new repo is created in /opt/puppetlabs/server/data/packages/public/<PE VERSION>/<PLATFORM>/.
# SSH into the node where you want to install the agent, and run the following command:
# curl -k https://<PUPPET MASTER HOSTNAME>:8140/packages/current/install.bash | sudo bash

curl -k https://sagarnikam3211.mylabserver.com:8140/packages/current/install.bash | sudo bash

# accepts puppet-agent's certificate request on puppet master (via browser)
sudo nano /etc/sysconfig/puppet
# You may specify parameters to the puppet client here
PUPPET_EXTRA_OPTS=--waitforcert=50

# restarting puppet server
kill -HUP `pgrep -f puppet-server`
systemctl reload puppetserver
service puppetserver reload

# accepting puppet-agent's certificate request on puppet master (cmdline)
puppet cert list
puppet cert sign sagarnikam3213.mylabserver.com
# or
puppet cert sign --all
