# LDAP installation

machine- t2microubuntu(Sydney)
url- http://54.79.101.5/phpldapadmin
username- admin
password- root

http://www.unixmen.com/openldap-installation-configuration-ubuntu-12-1013-0413-10-debian-67-2/


svn://115.113.226.194/repo/governance/api
svn://115.113.226.194/repo/governance/ui
svn://115.113.226.194/repo/governance/ServiceUtility


sagar = Sagar@Clogeny

#  Install OpenLDAP
sudo apt-get install slapd ldap-utils
 (ask for admin password)

# change config in ldap.conf file
sudo gedit /etc/ldap/ldap.conf

# 192.168.100.80
# 192.168.101.54
# run configuration assistance
sudo dpkg-reconfigure slapd
# No
# clogov.com
# organizatio name - clogov
# admin Password

# Test LDAP server
ldapsearch -x

# LDAP Server Administration using phpLDAPAdmin
sudo apt-get install phpldapadmin
# symbolic link for phpldapadmin directory.
sudo ln -s /user/share/phpldapadmin/ /var/www/phpldapadmin

# open
sudo gedit /etc/phpldapadmin/config.php

# 192.168.100.80
# 192.168.101.54


# in " Define your LDAP servers"

$servers->setValue('server','name','Azad Parinda LDAP server');
$servers->setValue('server','host','192.168.101.54');
$servers->setValue('server','base',array('dc=clogov,dc=com'));
$servers->setValue('login','bind_id','cn=admin,dc=clogov,dc=com');

# restart apache service
sudo /etc/init.d/apache2 restart

# Make sure that you have opened apache server port “80″ and LDAP default port “389″ in your firewall/router configuration.
sudo ufw allow 80
sudo ufw allow 389

# open http://localhost/phpldapadmin
# admin login
# "create new entry here"
# “Generic-Organizational Unit”
ou=azadparindaDev,dc=clogov,dc=com
#Create a child entry
# “Generic:Address book entry
# create object
# search
ldapsearch -x


# change line 2469 from /usr/share/phpldapadmin/lib/TemplateRender.php

$default = $this->getServer()->getValue('appearance','password_hash');
to
$default = $this->getServer()->getValue('appearance','password_hash_custom');

# Entry 1: cn=Amol Shinde,ou=azadparindaDev,dc=clogov,dc=com
dn: cn=Amol Shinde,ou=azadparindaDev,dc=clogov,dc=com
cn: Amol Shinde
givenname: Amol
l: Pune
o: azadparinda Technology
objectclass: inetOrgPerson
objectclass: top
sn: Shinde

# Entry 2: cn=belal ansari,ou=azadparindaDev,dc=clogov,dc=com
dn: cn=belal ansari,ou=azadparindaDev,dc=clogov,dc=com
cn: belal ansari
givenname: belal
l: pune
mail: belal.ansari@azadparinda.com
mobile: 99999999
o: azadparinda
objectclass: inetOrgPerson
objectclass: top
sn: ansari
