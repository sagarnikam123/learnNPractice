# 11_The MySQL Module

# on puppet master
sudo puppet module install puppetlabs-mysql --modulepath /etc/puppet/environments/production/modules/

sudo nano /etc/puppet/environments/production/modules/init.pp
class { '::mysql::server' :
  root_password => 'training',
}

# running agent on wiki
sudo puppet agent --verbose --no-daemonize --onetime
# check
sudo service mysqld status
sudo mysql -u root -p

# running agent on wikitest
sudo puppet agent --verbose --no-daemonize --onetime
sudo service mysqld status
sudo mysql -u root -p
