#mySQL-Hive connection

create database hive;
create user 'hive'@'localhost' identified by 'hive';
grant all privileges on hive.* to 'hive'@'localhost';
flush privileges;

create database HiveMetastoreDb;
grant all privileges on HiveMetastoreDb.* to 'root'@'localhost';
flush privileges;
