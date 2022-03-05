# 4_Demo: Starting Apache Kafka and Producing and Consuming Messages

# # adding Four Letter Words commands in whitelists, in config/zookeeper.properties
4lw.commands.whitelist=stat, ruok, conf, isro
4lw.commands.whitelist=*

# starting zookeeper server, with default config properties
bin/zookeeper-server-start.sh config/zookeeper.properties

# checking zookeeper running
telnet localhost 2181
stat    # zookeeper status, mode: standalone

# starting kafka server
bin/kafka-server-start.sh config/server.properties

# create topic
bin/kafka-topics.sh --create --topic my_topic --zookeeper localhost:2181 --replication-factor 1 --partitions 1

# check kafka topic list
bin/kafka-topics.sh --list --zookeeper localhost:2181

# produce message by starting producer & type message
bin/kafka-console-producer.sh --broker-list localhost:9092 --topic my_topic
#>MyMessage 1
#>MyMessage 2
#>MyMessage3
#>Anything goes here...

# consume message
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic my_topic --from-beginning

# checking message
cat /tmp/kafka-logs/my_topic-0/*.log

# stopping kafka server
bin/kafka-server-stop.sh config/server.properties

# stoppping zookeeper server
bin/zookeeper-server-stop.sh config/zookeeper.properties
