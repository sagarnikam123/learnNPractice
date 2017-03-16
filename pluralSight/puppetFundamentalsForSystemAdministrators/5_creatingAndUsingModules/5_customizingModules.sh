# 5_Customizing Modules

# on puppet master
cd /etc/puppet/environments/production/modules/
cd mediawiki

sudo nanao /etc/puppet/environments/production/manifests/init.pp
class mediawiki {
  $phpmysql = $osfamily ? {
    'redhat' => 'php-mysql',
    'debian' => 'php5-mysql',
    default => 'php-mysql',
  }

  package { $phpmysql:
    ensure => 'present',
  }
}

sudo nano /etc/puppet/environments/production/manifests/nodes.pp
node 'wiki' {
  class { 'linux':  }
  class { 'mediawiki': }
}

node 'wikitest' {
  class { 'linux':  }
  class { 'mediawiki': }
}

# Running puppet agent on wiki & wikitest
sudo puppet agent --verbose --no-daemonize --onetime
