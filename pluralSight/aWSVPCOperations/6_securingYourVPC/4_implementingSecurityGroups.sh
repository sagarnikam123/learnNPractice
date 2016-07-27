#ssh to podcast-test machine
ssh -i podcast-keys.pem ec2-user@52.66.73.216

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
