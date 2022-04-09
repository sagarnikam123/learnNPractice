# Console Producer and Consumer Basics
# What is the simplest way to write messages to and read messages from Kafka?

################################################################################
# 1. Initialize the project
mkdir console-consumer-producer-basic && cd console-consumer-producer-basic
################################################################################
# 2. Get Confluent Platform
touch docker-compose.yml
docker-compose up -d
################################################################################
# 3. Create the Kafka topic
docker-compose exec broker kafka-topics --create --topic orders --boostrap-server broker:9092
################################################################################
# 4. Start a console consumer

# open terminal on broker container
docker-compose exec broker bash

kafka-console-consumer \
--topic orders \
--boostrap-server broker:9092
################################################################################
# 5. Produce your first records

# open another shell
docker-compose exec broker bash

kakfa-console-producer \
--topic orders \
--boostrap-server broker:9092

# each line is one record, see consumer window, then close consumer - CTRL+C
the
lazy
fox
jumped over the brown cow
################################################################################
# 6. Read all records

# reading previously sent records
# close current consumer & send below on your producer
how now
brown cow
all streams lead
to Kafka!
################################################################################
# 7. Start a new consumer to read all records

# reading previously sent records, then close consumer - CTRL+C
kafka-console-consumer \
--topic orders \
--boostrap-server broker:9092
--from-beginning
################################################################################
# 8. Produce records with full key-value pairs
kafka-console-producer \
--topic orders \
--boostrap-server broker:9092 \
--property parse.key=true \
--property key.separator=":"

# send records
key1:what a lovely
key2:bunch of coconuts
foo:bar
fun:programming
################################################################################
# 9. Start a consumer to show full key-value pairs
kafka-console-consumer \
--topic orders \
--boostrap-server broker:9092
--from-beginning \
--property print.key=true \
--property key.separator="-"
################################################################################
# 10. Clean Up
docker-compose down
################################################################################
