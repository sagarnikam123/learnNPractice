# 9_The vcsrepo Module

# https://github.com/wikimedia/mediawiki.git
# on puppet master
sudo puppet module install puppetlabs-vcsrepo --modulepath /etc/puppet/environments/production/modules/

# edit
sudo nano /etc/puppet/environments/production/modules/init.pp
class { '::apache' :
  docroot => '/var/www/html',
  mpm_module => 'prefork',
  subscribe => Package[$phpmysql]
}

class { '::apache::mod::php' : }
  vcsrepo { '/var/www/html' :
    ensure => 'present',
    provider => 'git',
    source => "https://github.com/wikimedia/mediawiki.git",
    revision => 'REL1_23',
  }

file { '/var/www/html/index.html':
    ensure => 'absent',
}

# on wiki & wikitest server
sudo puppet agent --verbose --no-daemonize --onetime

ls -la /var/www/html
