
-- Hive queries

-- creating table
show databases;
create database painjan;
show databases;

create table posts (user string, post string, time bigint)
row format delimited
fields terminated by ','
stored as textfile;

show tables;
describe posts;

-- Loading data into table
!cat /home/hadoop/Desktop/learn/BigData/hive/coreservlets/userPosts.txt;

load data local inpath '/home/hadoop/Desktop/learn/BigData/hive/coreservlets/userPosts.txt'
overwrite into table POSTS;

-- Query Data
SELECT * FROM POSTS;

dfs -cat /user/hive/warehouse/posts/userPosts.txt;

select count(1) from posts;
select * from posts where user = 'user2';
select * from posts where time <=1343182133839 limit 2;

drop table posts;
dfs -ls /user/hive/warehouse;

-- Load data from HDFS location
bin/hadoop dfs -put  /home/hadoop/Desktop/learn/BigData/hive/coreservlets/userPosts.txt  /without/
load data inpath '/without/userPosts.txt'
overwrite into table posts;

-- Utilize an existing location on HDFS
create external table posts (user string, post string,time bigint)
row format delimited
fields terminated by ','
stored as textfile
location '/without';

-- Schema Violation
!cat /home/hadoop/Desktop/learn/BigData/hive/coreservlets/userPosts.txt;
load data local inpath '/home/hadoop/Desktop/learn/BigData/hive/coreservlets/userPostsInconsistentFormat.txt'
overwrite into table posts;
select * from posts; # observer NULL value on 2nd user

-- Partitions
create table posts (user string, post string, time bigint)
partitioned by (country string)
row format delimited
fields terminated by ','
stored as textfile;

describe posts;
show partitions posts; -- describes partition

load data local inpath '/home/hadoop/Desktop/learn/BigData/hive/coreservlets/userPosts.txt'
overwrite into table posts partition (country = 'US');
-- Each file is loaded into separate partition, data is separated by country
