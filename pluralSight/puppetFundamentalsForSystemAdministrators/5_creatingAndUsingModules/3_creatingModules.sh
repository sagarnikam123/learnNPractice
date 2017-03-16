# 3_Creating Modules

# on puppet master
cd /etc/puppet/environments/production/modules/

# generating module
sudo puppet module generate sagarnikam123-mediawiki --environment production

# give description about module
"Install & configure Mediawiki"

sudo mv sagarnikam123-mediawiki mediawiki
cd mediawiki
ls -la
cd meanifests
ls -la
