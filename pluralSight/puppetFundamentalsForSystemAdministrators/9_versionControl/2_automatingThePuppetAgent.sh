# 2_Automating the Puppet Agent

# configuring run interval
sudo gedit /etc/puppet/puppet.conf
[main]
    runinterval=60

# enabling & starting puppet agent on wiki
sudo chkconfig puppet on
sudo service puppet start

# enabling & starting puppet agent on wikitest
sudo nano /etc/default/puppet
START=yes

sudo service puppet start
