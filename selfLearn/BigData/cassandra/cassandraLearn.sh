

# path to change
log4j.appender.R.File=/var/log/cassandra/system.log   --->    log4j.appender.R.File=/home/trendwise/apache/apache-cassandra-1.2.0/system.log

data_file_directories=/home/trendwise/apache/apache-cassandra-1.2.0/dataDir
saved_caches_directory= /home/trendwise/apache/apache-cassandra-1.2.0/saved_caches



create schema pardesi;

create columnfamily bhulGaya (
bookId int primary key,
bookName varchar,
Author varchar
);

create columnfamily jinaNahi (
bookId int primary key,
bookName varchar,
Author varchar
);

COPY schema1.bhulGaya(bookId,bookName,Author)
  FROM '/home/benzene/books.csv';
