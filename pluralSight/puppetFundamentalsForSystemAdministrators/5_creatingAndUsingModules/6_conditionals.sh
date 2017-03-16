# 6_Conditionals

# to mediawiki module only
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

  if $osfamily == 'redhat' {
    package { 'php-xml':
      ensure => 'present',
    }
  }
}

# Running puppet agent on wikitest
sudo puppet agent --verbose --no-daemonize --onetime
