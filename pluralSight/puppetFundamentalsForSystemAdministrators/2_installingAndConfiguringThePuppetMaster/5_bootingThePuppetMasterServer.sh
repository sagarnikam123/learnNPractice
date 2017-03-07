# 5_Booting the Puppet Master Server

cd puppet-fundamentals-lab
# adding centos image to box
vagrant box add centos65-base centos65.box
vagrant box add trusty64 trusty-server-cloudimg-amd64-vagrant-disk1.box

# check box list
vagrant box list

cd puppetmaster
ls -la
vagrant up
vagrant ssh
ifconfig

# can login using different ssh-client
# username & password - vagrant

ssh vagrant@172.31.0.201

# install nano, git & NTP- network time protocol
sudo yum -y install nano git ntp
# starting ntp service
sudo service ntpd start
# making ntp service boot at startup time
sudo chkconfig ntpd on
# checking
chkconfig | grep ntpd
