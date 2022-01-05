# Introduction to Amazon EC2

###############################################################################

# Task 1: Launch Your Amazon EC2 Instance

#!/bin/bash
yum -y install httpd
systemctl enable httpd
systemctl start httpd
echo '<html><h1>Hello From Your Web Server!</h1></html>' > /var/www/html/index.html

# Task 2: Monitor Your Instance
# Task 3: Update Your Security Group and Access the Web Server
# Task 4: Resize Your Instance: Instance Type and EBS Volume
# Task 5: Explore EC2 Limits
# Task 6: Test Termination Protection

###############################################################################