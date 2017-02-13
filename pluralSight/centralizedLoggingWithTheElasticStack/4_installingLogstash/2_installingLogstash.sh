# 2_Installing Logstash

# check version
cat /etc/issue.net

# install Java-JVM (oracle/openJDK)
sudo apt-get install openjdk-8-jre-headless

# installing Java-8 Oracle
sudo add-apt-repository ppa:webupd8team/java
sudo apt update; sudo apt install oracle-java8-installer

# check java versino
java -version

# adding repository info
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# add elastic pkg sources
echo "deb https:// artifacts.elastic.co/packages/5.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-5.x.list

# update & install
sudo apt-get update && apt-get install logstash

# checking
cd /usr/share/logstash
bin/logstash -e 'input { stdin { } } output { elasticsearch { hosts => ["192.168.0.12:9200"] } }'

# give testing message input
This is a logstash test. Hello, from Pluralsight!

# check using postman/postmaster
GET - http://192.168.0.12:9200/logstash.*/_search

# enable logstash on startup
systemctl enable logstash

# start logstash service
service logstash start
