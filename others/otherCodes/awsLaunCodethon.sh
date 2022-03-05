# AWS launch details

(LDAP installed on this server)
machine- t2microubuntu(Sydney)
url- http://54.79.101.5/phpldapadmin
username- admin
password- root

t2.micro
ami- Ubuntu Server 14.04 LTS (HVM), SSD Volume Type - ami-fddabdc7

Instance ID -  i-65b53e5b
Public IP - 54.79.101.5
Availability zone (sydney)- ap-southeast-2a

# create keyPair private file & download to some location (.pem file)

# change permission
chmod 400 ubuntu14_04_t2MicroCodethon.pem

# Connect to AMI
# ssh -i mykey.pem user@aws-host.amazon.com
ssh -i ubuntu14_04_t2MicroCodethon.pem ubuntu@54.79.101.5

# install apache2
sudo apt-get update
sudo apt-get install apache2


sudo gedit /etc/ldap/ldap.conf
sudo cat /etc/ldap/ldap.conf

# You can run the following command to reveal your server’s IP address.
ifconfig eth0 | grep inet | awk '{ print $2 }'

sudo gedit /etc/phpldapadmin/config.php
sudo cat /etc/phpldapadmin/config.php

$servers->setValue('server','name','Clogeny Governance LDAP server');
$servers->setValue('server','host','54.79.101.5');
$servers->setValue('server','base',array('dc=clogeny,dc=com'));
$servers->setValue('login','bind_id','cn=admin,dc=clogeny,dc=com');

sudo /etc/init.d/apache2 restart
