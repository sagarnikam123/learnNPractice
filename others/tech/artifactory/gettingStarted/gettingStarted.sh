# Artifactory - getting started

###############################################################################
# pre-installation

# netstat: command not found
apt-get install net-tools
###############################################################################
# https://www.jfrog.com/confluence/display/JFROG/Installing+Artifactory
# download - https://jfrog.com/community/download-artifactory-oss/
tar -xvzf /home/tetra/Downloads/soft/jfrog-artifactory-oss-7.29.8-linux.tar.gz
cd artifactory-oss-7.29.8

# export path in .bashrc
export JFROG_HOME=/home/tetra/apache/artifactory-oss-7.29.8

# Run Artifactory

# as a foreground
app/bin/artifactoryctl
# as daemon process
app/bin/artifactoryctl start

# verify process
app/bin/artifactoryctl status
app/bin/artifactoryctl check

# stop
app/bin/artifactoryctl stop

# http://localhost:8082/ui/
# default - User: admin, Password: password

# log
tail -f $JFROG_HOME/var/log/console.log
###############################################################################
# JFrog CLI - https://jfrog.com/getcli/

wget -qO - https://releases.jfrog.io/artifactory/jfrog-gpg-public/jfrog_public_gpg.key | sudo apt-key add -
echo "deb https://releases.jfrog.io/artifactory/jfrog-debs xenial contrib" | sudo tee -a /etc/apt/sources.list;
apt update;
apt install -y jfrog-cli-v2-jf;

# verify
jf --help
###############################################################################
# JFrog-Jenkins connection

# JFrog Platform URL - http://localhost:8082/
# JFrog Artifactory URL - http://localhost:8082/artifactory
###############################################################################
