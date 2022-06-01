# inVisio
# https://github.com/Netflix/inviso

# docker run -d -p 8080:8080 savaki/inviso
nerdctl run -d -p 8080:8080 savaki/inviso

# Pull down required resources and stage them
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.21/bin/apache-tomcat-10.0.21.tar.gz
tar -xvzf apache-tomcat-10.0.21.tar.gz
rm -r apache-tomcat-10.0.21/webapps/*

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.2.1-darwin-x86_64.tar.gz
tar -xvzf elasticsearch-8.2.1-darwin-x86_64.tar.gz

# Clone the Inviso repository and build the java project
git clone https://github.com/Netflix/inviso.git
cd inviso
./gradlew assemble
cd ..

# Copy WAR files and link Static Web Pages
cp inviso/trace-mr2/build/libs/inviso#mr2#v0.war apache-tomcat-10.0.2/webapps/
ln -s `pwd`/inviso/web-ui/public apache-tomcat-10.0.2/webapps/ROOT

# Start ElasticSearch and create Indexes
./elasticsearch-1.3.2/bin/elasticsearch -d
curl -XPUT http://localhost:9200/inviso -d @inviso/elasticsearch/mappings/config-settings.json
{"acknowledged":true}
curl -XPUT http://localhost:9200/inviso-cluster -d @inviso/elasticsearch/mappings/cluster-settings.json
{"acknowledged":true}

# Start Tomcat
