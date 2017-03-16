# 12_The Firewall Module

# on puppet master
sudo puppet module install puppetlabs-firewall --modulepath /etc/puppet/environments/production/modules/

sudo nano /etc/puppet/environments/production/modules/init.pp
class { '::firewall' : }

firewall { '000 allow http access' :
  port => '80',
  proto => 'tcp',
  action => 'accept',
}

# checking
sudo iptables -L

sudo puppet agent --verbose --no-daemonize --onetime

# browse site at
# 172.31.0.202

# install MediaWiki
# configure accordingly
# database name - wiki
# database password - training
# download localSettings.php file & upload back to server
