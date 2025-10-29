# Download and Installation

# using repository
# If you've previously imported the key from Jenkins, the "rpm --import" will fail because you already have a key.
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins

# https://pkg.jenkins.io/redhat-stable/
wget https://pkg.jenkins.io/redhat-stable/jenkins-2.7.4-1.1.noarch.rpm
sudo -Uvh jenkins-2.7.4-1.1.noarch.rpm

# making it starting at startup
sudo systemctl enable jenkins.service
sudo systemctl restart jenkins.service

# check port 8080
telnet localhost 8080

# login to browser
sagarnikam1233b.mylabserver.com
http://54.251.131.68:8080/login
# copy password into browser
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
# install suggested plugings

# username - jenkins
# passoword - 123456

# stop jenkins
sudo systemctl stop jenkins.service
