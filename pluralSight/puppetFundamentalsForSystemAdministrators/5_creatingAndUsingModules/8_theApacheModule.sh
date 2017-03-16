# 8_The Apache Module

# on puppet master
sudo puppet module install puppetlabs-apache --modulepath /etc/puppet/environments/production/modules/

sudo nanao /etc/puppet/environments/production/manifests/init.pp
class { '::apache' :
  docroot => '/var/www/html',
  mpm_module => 'prefork',
  subscribe => Package[$phpmysql]
}

class { '::apache::mod::php' : }

# on wiki
sudo puppet agent --verbose --no-daemonize --onetime
#check
sudo service httpd status

# check again
sudo yum -y remove httpd
sudo puppet agent --verbose --no-daemonize --onetime
#check
sudo service httpd status
