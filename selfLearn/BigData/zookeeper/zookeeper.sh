#Zookeeper

################################################################################

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

################################################################################

# reading zookeeper log files
java -cp zookeeper-3.4.10.jar:lib/log4j-1.2.16.jar:lib/slf4j-log4j12-1.6.1.jar:lib/slf4j-api-1.6.1.jar org.apache.zookeeper.server.LogFormatter data/version-2/log.1

# creating (persistent) ZNode
# create /path /data
create /firstZNode "tomatino"

# creating sequential ZNode
create -s /SeqZNode2 "seqData2"

# creating ephemeral ZNode
create -e /ephemeralZNode "ePhiMera"

# getting data
# get /path
get /firstZNode
get /SeqZNode20000000002

# setting watcher
# get /path [watch] 1
get /firstZNode 1

# setting data
# set /path /data
set /firstZNode "Nava Data aahe"

# creating children/sub-znode
# create /parent/path/subnode/path /data
create /firstZNode/firstChotaZNode "aatach taiyar kela"
create /firstZNode/secondChintusaZNode "navjat"

# listing children
# ls /path
ls /firstZNode

# checking status
# stat /path
stat /firstZNode
stat /ephemeralZNode

# removing a zNode
# rmr /path
rmr /firstZNode

################################################################################
