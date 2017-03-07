# 5_Adding the Puppet Master to the Hosts File

# for wiki
cd  puppet-fundamentals-lab/wiki
vagrant up
vagrant ssh
sudo -i # to go to root
echo 172.31.0.201 puppetmaster >> /etc/hosts
cat /etc/hosts

# for wikitest
cd  puppet-fundamentals-lab/wikitest
vagrant up
vagrant ssh
sudo -i # to go to root
echo 172.31.0.201 puppetmaster >> /etc/hosts
cat /etc/hosts
