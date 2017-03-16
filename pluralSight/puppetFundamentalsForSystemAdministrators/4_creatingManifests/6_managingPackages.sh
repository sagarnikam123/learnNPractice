# 6_Managing Packages

# on puppet master
sudo nano /etc/puppet/environments/production/manifests/nodes.pp

node 'wiki' {
  package { 'ntp':
    ensure => 'installed',
  }
}

node 'wikitest'{
    package { 'ntp':
      ensure => 'installed',
    }
}

# chekcing on wiki & wikitest servers
sudo yum info ntp # Available packages
ls /usr/sbin/ntpd -la
sudo puppet agent --verbose --no-daemonize --onetime
sudo yum info ntp # Installed packages
