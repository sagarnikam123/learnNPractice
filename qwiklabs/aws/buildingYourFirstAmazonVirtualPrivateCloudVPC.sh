# Building Your First Amazon Virtual Private Cloud (VPC)

###############################################################################

# Task 1: Create a VPC
# Task 2: Create Your Public Subnets
# Task 3: Create an Internet Gateway
# Task 4: Create a Route Table, Add Routes, And Associate Public Subnets
# Task 5: Create a Security Group for your Web Server
# Task 6: Launch a Web Server in your Public Subnet

#!/bin/bash -ex
yum -y update
yum -y install httpd php mysql php-mysql
chkconfig httpd on
service httpd start
cd /var/www/html
wget https://s3-us-west-2.amazonaws.com/us-west-2-aws-training/awsu-spl/spl-13/scripts/app.tgz
tar xvfz app.tgz
chown apache:root /var/www/html/rds.conf.php

# Task 7: Create Private Subnets for your MySQL Server
# Task 8: Create a Security Group for your Database Server
# Task 9: Create a Database Subnet Group
# Task 10: Create an Amazon RDS Database
# Task 11: Connect Your Address Book Application to Your Database

###############################################################################
