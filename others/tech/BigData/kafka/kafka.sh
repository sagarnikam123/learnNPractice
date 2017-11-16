#kafka

#download
https://kafka.apache.org/downloads

#untar
tar -xvzf kafka_2.11-0.11.0.0.tgz
cd kafka_2.11-0.11.0.0

#startingZookeeperServer
bin/zookeeper-server-start.sh config/zookeeper.properties

#starting
bin/kafka-server-start.sh config/server.properties

# checking zookeeper is installed or not
netstat -ant | grep :2181

# Create a topic
bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test

#CheckListOfTopicsCreated
bin/kafka-topics.sh --list --zookeeper localhost:2181

#creatingYourOwnTopic (producer)
bin/kafka-console-producer.sh -broker-list localhost:9092 -topic test

#creatingConsumer
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning
