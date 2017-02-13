# 2_Installing and Configuring Kibana

# adding repository info
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# add elastic pkg sources
echo "deb https:// artifacts.elastic.co/packages/5.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-5.x.list

# update & install
sudo apt-get update && apt-get install kibana

# chagne config
sudo nano /etc/kibana/kibana.yml

# config
server.host: "192.168.0.15"
server.name: "globo-kibana01" # hostname
elasticsearch.url: "http://192.168.0.12:9200" # point where elasticsearch server locates

# starting kibana service
service kibana start

# checking in browser
# http://192.168.0.15:5601

# create index using default params
