# 8_Puppet Master Security: Dealing with SELinux

# setting SELinux to permissive mode
sudo setenforce permissive
# making permissive mode enable after reboot
sudo sed -i 's\=enforcing\=permissive\g' /etc/sysconfig/selinux

# checking
sudo getenforce
sudo cat /etc/sysconfig/selinux
