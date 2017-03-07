# 6_Installing the Puppet Agent on CentOS

# on wiki server

# install puppet repository
sudo yum -y install http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
sudo yum -y install puppet

# install nano
sudo yum -y install nano

# setting puppet master
sudo nano /etc/puppet/puppet.conf

#
[agent]
    server = puppetmaster

# generate SSL certificate
sudo puppet agent --verbose --no-daemonize --onetime --server puppetmaster

# install puppet agent
sudo yum -y install puppet
