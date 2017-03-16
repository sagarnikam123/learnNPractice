# 4_Managing Files

# on puppet master
sudo nano /etc/puppet/environments/production/manifests/nodes.pp

node 'wiki' {
  file { '/info.txt':
    ensure  => 'present',
    content => inline_template("Created by Puppet at <%= Time.now %>\n"),
  }
}

# go to wiki server & run puppet agent
sudo puppet agent --verbose --no-daemonize --onetime
# check
sudo cat /info.txt

# run again to check
sudo puppet agent --verbose --no-daemonize --onetime
# file gets created b'coz content changed
# check
sudo cat /info.txt
