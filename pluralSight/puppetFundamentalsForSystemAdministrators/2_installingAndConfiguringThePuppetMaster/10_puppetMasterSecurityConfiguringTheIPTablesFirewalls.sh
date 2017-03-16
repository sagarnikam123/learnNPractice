# 10_Puppet Master Security: Configuring the IPTables Firewalls

# installing & starting firewalld for centos-7
yum install firewalld -y
systemctl enable firewalld
systemctl start firewalld
systemctl status firewalld

# adding/appending port's info into iptables
sudo nano /etc/sysconfig/iptables

# add below line - centos-6
-A INPUT -m state --state NEW -m tcp -p tcp --dport 8140 -j ACCEPT

# for centos-7
firewall-cmd --zone=public --add-port=8140/tcp --permanent

# reload IPTables configuration
sudo service iptables restart
firewall-cmd --reload
