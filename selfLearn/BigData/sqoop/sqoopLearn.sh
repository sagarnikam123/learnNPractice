# Sqoop Learn-To import & export data from relational databases(like MySQL) into HDFS/Hive


# PATH export
# JAVA-HOME
export JAVA_HOME=/home/hadoop/apache/jdk1.7.0_10
#HADOOP-HOME
export HADOOP_HOME=/home/hadoop/apache/hadoop-1.0.4
#HIVE_HOME
export HIVE_HOME=/home/hadoop/apache/hive-0.10.0
# SQOOP_HOME
export SQOOP_HOME=/home/hadoop/apache/sqoop-1.4.3.bin__hadoop-1.0.0

#HBASE_HOME
export HBASE_HOME=/home/hadoop/apache/hbase-0.94.8

# PATH
export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$SQOOP_HOME/bin:$HIVE_HOME/bin # having Hive home
export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$SQOOP_HOME/bin:$HBASE_HOME/bin # having HBase home

# fake HBASE_export
export HBASE_HOME=/home/hadoop
# fake HIVE_HOME
export HIVE_HOME=/home/hadoop


#Making 

# Listing Databases
bin/sqoop list-databases --connect jdbc:mysql://localhost/  --username root -P

#make folders in HDFS to import temp files
bin/hadoop fs -mkdir /user/hadoop
bin/hadoop fs -mkdir /tmp
bin/hadoop fs -mkdir /user/hive/warehous
bin/hadoop fs -ls /


# importing data into HDFS
# sqoop import --connect jdbc:mysql://localhost/databaseName --table tableName --username userName --password password # (use -P to prompt for Password)
./sqoop import --connect jdbc:mysql://localhost/token_system --table customer --username root -P

# checking HDFS for imported files
bin/hadoop fs -ls /user/hadoop/books
bin/hadoop fs -cat /user/hadoop/books/part-m-00000

#importing into HIVE (#if given thrift error check HBase/lib & Hive/lib for equal version of libthrift.jar)
bin/sqoop import --connect jdbc:mysql://localhost/bookStore --username root -P --table authors --hive-import -verbose -m 1

#importing with query-wrong
#bin/sqoop import --connect jdbc:mysql://localhost/bookStore --username root -P --table authorBook --query "select * from authorBook where AuthID < 1010"

#importing into HBase
bin/sqoop import --connect jdbc:mysql://localhost/testhadoop --username root -P --table employee --hbase-table employeeHBase \
--column-family info --hbase-row-key empid --hbase-create-table -m 1

#importing HDFS to MySQL
mysql -u root -p

use bookStore;

# create MYSQL table
create table qAns (
rows varchar(10),
question varchar(20),
answer varchar(20)
);


# HDFS to MySQL
bin/sqoop export  --connect jdbc:mysql://localhost/bookStore --username root -P --table qAns --export-dir /input/data.tsv --input-fields-terminated-by '\t' -verbose -m 1


