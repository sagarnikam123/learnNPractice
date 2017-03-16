# 9_Classes

# on puppet master
sudo nano /etc/puppet/environments/production/manifests/nodes.pp

node 'wiki' {
  class { 'linux':  }
}

node 'wikitest' {
  class { 'linux':  }
}

class linux {
  $ntpservice = $osfamily ? {
    'redhat' => 'ntpd',
    'debian' => 'ntp',
    default => 'ntp',
  }

  package { 'ntp':
    ensure => 'installed',
  }

  service { $ntpservice:
    ensure => 'running',
    enable => true,
  }

  file { '/info.txt':
    ensure  => 'present',
    content => inline_template("Created by Puppet at <%= Time.now %>\n"),
  }
}
