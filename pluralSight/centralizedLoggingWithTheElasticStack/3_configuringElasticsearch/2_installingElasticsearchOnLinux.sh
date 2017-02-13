# 2_Installing Elasticsearch on Linux

# check version
cat /etc/issue.net

# install Java-JVM (oracle/openJDK)
sudo apt-get install openjdk-8-jre-headless

# installing Java-8 Oracle
sudo add-apt-repository ppa:webupd8team/java
sudo apt update; sudo apt install oracle-java8-installer

# check java versino
java -version

# download Elasticsearch
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.2.0.deb

# install elasticsearch
sudo dpkg -i elasticsearch-5.2.0.deb

# modify elasticsearch config
sudo nano /etc/elasticsearch/elasticsearch.yml

# config
cluster.name: globo-monitoring
node.name: globo-es01 # same as hostname
network.host: 192.168.0.12 # ip address of host

# change system level env variable - vm.max_map_count
sysctl -w vm.max_map_count=262144

# start elasticsearch service
sudo service elasticsearch start

# check
# curl <host-ip>:9200
curl http://192.168.0.12:9200

# to start elasticsearch on startup
systemctl enable elasticsearch
