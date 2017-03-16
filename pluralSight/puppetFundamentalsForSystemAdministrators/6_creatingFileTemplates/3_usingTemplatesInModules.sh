# 3_Using Templates in Modules

sudo nano /etc/puppet/environments/production/modules/mediawiki/manifests/init.pp
class mediawiki {

  file { 'LocalSettings.php':
    path => '/var/www/html/LocalSettings.php',
    ensure => 'file',
    content => template('mediawiki/LocalSettings.erb'),
  }
}

sudo nano /etc/puppet/environments/production/manifests/nodes.pp
node 'wiki' {
  $wikisitename = 'wiki'
  $wikimetanamespace = 'Wiki'
  $wikiserver = "http://172.31.0.202"
  $wikidbserver = 'localhost'
  $wikidbname = 'wiki'
  $wikidbuser = 'root'
  $wikidbpassword = 'training'
  $wikiupgradekey = 'puppet'

  class { 'linux': }
  class { 'mediawiki': }
}

# on wiki
sudo puppet agent --verbose --no-daemonize --onetime
# check
sudo nano /var/www/html/LocalSettings.php
# try to load mediawiki site in browser
# http://172.31.0.202
