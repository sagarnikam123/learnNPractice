# using apache cassandra distribution
cd /home/quanta/apache/apache-cassandra-3.11.3/
bin/cassandra
bin/cqlsh

# check cluster info
desc cluster;
# shutdown cassandra
ps ax | grep java
kill -TERM 4603

docker run --name=n1 -d tobert/cassandra
docker container ps
docker exec -it n1 cqlsh

#CQLSH commands
help
help consistency
help create_table
help select

# creating keyspace
create keyspace pluralsight with replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 1};
use pluralsight;
create table courses (id varchar primary key);
# AlreadyExists: Table 'pluralsight.courses' already exists
create table courses (id varchar primary key);
create table if not exists courses  (id varchar primary key);
alter table courses add duration int;
alter table courses add released timestamp;
alter table courses add author varchar;
alter table courses with comment = 'A table of coures';
desc table courses;
drop table courses;

# creating new table
create table courses(
id varchar primary key,
name varchar,
author varchar,
audience int,
duration int,
cc boolean,
released timestamp
) with comment = 'A table of courses';

desc table courses;
