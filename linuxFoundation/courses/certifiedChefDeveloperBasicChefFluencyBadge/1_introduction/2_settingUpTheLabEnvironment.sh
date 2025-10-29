# Setting Up the Lab Environment

# Default - Use terminal/Putty
#	Default Server User: [user]
#	Default Server Pass: [123456]
#	Default Root Pass: [123456]

#PublicIP & #PublicHostNames
# found on LinuxAcademy's server config

#UbuntuLinux
wget https://packages.chef.io/stable/ubuntu/12.04/chefdk_1.0.3-1_amd64.deb
sudo dpkg -i chefdk_1.0.3-1_amd64.deb

#CentOS/RedHat
wget https://packages.chef.io/stable/el/7/chefdk-1.0.3-1.el7.x86_64.rpm	# RedHat/CentOS 7
wget https://packages.chef.io/stable/el/6/chefdk-1.0.3-1.el6.x86_64.rpm	# RedHat/CentOS 6
sudo rpm -ivh chefdk-1.0.3-1.el7.x86_64.rpm

#checking chef installation
sudo chef-client --local-mode

#Uninstall
#debian
sudo dpkg -P chefdk

#RedHat/CentOS
rpm -qa *chefdk*
sudo yum remove -y <package>
