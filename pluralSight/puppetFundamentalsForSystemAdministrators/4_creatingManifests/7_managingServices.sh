# 7_Managing Services

# on puppet master
sudo nano /etc/puppet/environments/production/manifests/nodes.pp

node 'wiki' {
  service { 'ntpd':
    ensure => 'running',
    enable => true,
  }
}

node 'wikitest' {
  service { 'ntp':
    ensure => 'running',
    enable => true,
  }
}

# checking on server (wiki)
sudo service ntpd status

# run puppet agent
sudo puppet agent --verbose --no-daemonize --onetime
sudo service ntpd status

# remove & again install using puppet agent
sudo yum remove ntp
sudo service ntpd status

sudo puppet agent --verbose --no-daemonize --onetime
sudo service ntpd status

# checking on server (wikitest)
sudo service ntp status
# if running, stop it
sudo service ntp stop
sudo service ntp status

# use puppet agent to start it
sudo puppet agent --verbose --no-daemonize --onetime
sudo service ntpd status

# remove ntp
sudo apt-get remove ntp
sudo service ntpd status
ls /user/sbin/ntpd  -la

# installing using puppet agent
sudo puppet agent --verbose --no-daemonize --onetime
sudo service ntpd status
