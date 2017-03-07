# 9_Puppet Master Security: Generating Certificates

# on master only once
sudo puppet master --verbose --no-daemonize
# checking
sudo ls -la /var/lib/puppet/ssl
