# Puppet Manifests: Resources, Attributes, and Parameters

# on puppet master
cd /etc/puppetlabs/code/environments/production/manifests
sudo nano site.pp

# generate password (admin123)
openssl passwd -1

# config
node default {

  # ensure sagarnikam123 has user/pass credentials on all nodes
  user { 'sagarnikam123_user':
    name => 'sagarnikam123',
    groups => 'wheel',
    managehome => true,
    password => '',
    ensure => present,
  }
}

# check .pp file
puppet parser validate site.pp

# run
puppet apply --noop site.pp
