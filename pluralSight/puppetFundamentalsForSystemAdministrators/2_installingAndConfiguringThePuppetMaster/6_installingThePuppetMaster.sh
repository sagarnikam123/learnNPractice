# 6_Installing the Puppet Master

# adding puppet repository
sudo yum -y install http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm

# installing puppet server
sudo yum -y -x [ruby] install puppet-server  

# checking puppet installation
puppet master --version
