# 5_Enabling Hiera

# reloading /etc/puppet/hiera.yaml on puppet master
sudo service httpd restart

# run agents on wiki
sudo puppet agent --verbose --no-daemonize --onetime

# configure mediawiki on wikitest in browser
# 172.31.0.203
# database name - wikitest
# database password - training
# username - admin
# password - trainnig

# run agent on wikitest
sudo puppet agent --verbose --no-daemonize --onetime
