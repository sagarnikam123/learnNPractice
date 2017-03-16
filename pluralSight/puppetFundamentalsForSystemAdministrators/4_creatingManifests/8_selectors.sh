# 8_Selectors

# on puppet master
sudo nano /etc/puppet/environments/production/manifests/nodes.pp

$ntpservice = $osfamily ? {
  'redhat' => 'ntpd',
  'debian' => 'ntp',
  default => 'ntp',
}

node 'wiki' {
  service { $ntpservice :
    ensure => 'running',
    enable => true,
  }
}

node 'wikitest' {
  service { $ntpservice :
    ensure => 'running',
    enable => true,
  }
}

# uninstall on each server & run puppet agent & check status
sudo yum remove ntp
sudo service ntpd status

sudo puppet agent --verbose --no-daemonize --onetime
sudo service ntpd status

# remove ntp
sudo apt-get remove ntp
sudo service ntpd status

# installing using puppet agent
sudo puppet agent --verbose --no-daemonize --onetime
sudo service ntpd status
