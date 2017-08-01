#Zookeeper

#download
https://zookeeper.apache.org/

#extract
tar -xvzf zookeeper-3.4.10.tar.gz

#make data directory
cd zookeeper-3.4.10
mkdir data

#make config file (vi conf/zoo.cfg)
tickTime = 2000
dataDir = /home/quanta/apache/zookeeper-3.4.10/data
clientPort = 2181
initLimit = 5
syncLimit = 2

#startZookeeperServer
bin/zkServer.sh start

#check starting of server
netstat -ant | grep :2181

#stoppingZookeeper server
bin/zkServer.sh  stop

#startingZookeeper cli
bin/zkCli.sh
