# 7_Setting up Directory Environments

sudo mkdir -p /etc/puppet/environments/production/{modules,manifests}
ls /etc/puppet/environments/production/
cd /etc/puppet/environments/production/
ls -la
sudo nano environments.conf

# environments.conf
modulepath = /etc/puppet/environments/production/modules
environment_timeout = 5s

ls -la

cd /etc/puppet/
# editing puppet.conf
sudo nano puppet.conf

# puppet.conf
# adding DNS entry into main
[main]
    dns_alt_names = puppet,puppetmaster,puppetmaster.benpiper.com
[master]
    environmentpath = $confdir/environments
    basemodulepath = $confdir/modules:/opt/puppet/share/modules
