# SSH
ssh -i podcast-keys.pem ec2-user@52.66.89.249

# switch to root
sudo su

# update repo
yum update -y

# install apache
yum install httpd -y

# check status of service
service httpd status

# start if not
service httpd start

# go to add html file
cd /var/www/html

# create html file
echo "Server ABCD	web-1a	52.66.89.249" >> index.html

########################################################################
# SSH
ssh -i podcast-keys.pem ec2-user@52.66.110.157

# switch to root
sudo su

# update repo
yum update -y

# install apache
yum install httpd -y

# check status of service
service httpd status

# start if not
service httpd start

# go to add html file
cd /var/www/html

# create html file
echo "Server PQRS	web-1b	52.66.110.157" >> index.html
########################################################################
