# 7_Installing the Puppet Agent on Ubuntu

sudo wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update
sudo apt-get install puppet


sudo /etc/puppet/puppet.conf
# configure puppet
[agent]
    server = puppetmaster

# enable puppet agent
sudo puppet agent --enable

# generate certificate
sudo puppet agent --verbose --no-daemonize --onetime
