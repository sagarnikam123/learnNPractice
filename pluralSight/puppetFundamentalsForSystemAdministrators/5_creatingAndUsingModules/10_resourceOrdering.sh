# 10_Resource Ordering

# edit
sudo nano /etc/puppet/environments/production/modules/init.pp
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

File['/var/www/html/index.html'] => Vcsrepo ['/var/www/html/']

sudo touch '/var/www/html/index.html'
ls -la /var/www/html/
sudo puppet agent --verbose --no-daemonize --onetime
