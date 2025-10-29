# Configuration Tour

# check for jenkins user
sudo cat /etc/passwd | grep jenkins

cd /etc/init.d
ll
cat jenkins | more

# jenkins directory
cd /var/lib/jenkins
ll
cd jobs # this where jenkins jobs stores
userContent
cat readme.txt

su root
echo "THIS IS JOB INFORMATION ON JOB XXX" > jobXXX.html

# start jenkins
sudo systemctl start jenkins.service

# open in browser
http://sagarnikam1233b.mylabserver.com:8080/userContent/jobXXX.html

cd /var/cache/jenkins/war
ll

cd WEB-INF/
ll
cat web.act
