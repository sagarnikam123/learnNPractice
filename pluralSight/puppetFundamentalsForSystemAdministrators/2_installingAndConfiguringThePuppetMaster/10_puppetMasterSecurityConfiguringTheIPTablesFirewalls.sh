# 10_Puppet Master Security: Configuring the IPTables Firewalls

# adding/appending port's info into iptables
sudo nano /etc/sysconfig/iptables

# add below line
-A INPUT -m state --state NEW -m tcp -p tcp --dport 8140 -j ACCEPT

# reload IPTables configuration
sudo service iptables restart
