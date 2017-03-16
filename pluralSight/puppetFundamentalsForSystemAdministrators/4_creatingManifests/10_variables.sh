# 10_Variables

# on puppet master
sudo nano /etc/puppet/environments/production/manifests/nodes.pp

class linux {
  $admintools = ['git', 'nano', 'screen']

  package { $admintools :
    ensure => 'installed',
  }
}

# remove nano
sudo yum remove nano
