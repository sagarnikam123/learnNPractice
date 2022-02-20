# Getting Started with SonarQube

# Download Community - https://www.sonarqube.org/downloads/
unzip sonarqube-9.2.4.50792.zip && cd sonarqube-9.2.4.50792.zip
# bin/ - SonarQube’s binaries
# conf/	- SonarQube’s configuration files
# data/	- SonarQube’s data

# Download some sample projects
wget -O sonar-scanning-examples.zip https://github.com/SonarSource/sonar-scanning-examples/archive/master.zip
unzip sonar-scanning-examples.zip && cd sonar-scanning-examples-master

# run - http://localhost:9000
bin/linux-x86-64/sonar.sh
################################################################################
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true \
-p 9000:9000 sonarqube:latest
# http://localhost:9000   login: admin    password: admin
################################################################################
