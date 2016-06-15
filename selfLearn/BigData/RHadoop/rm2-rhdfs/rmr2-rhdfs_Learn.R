# download rmr2 & rhdfs
https://github.com/RevolutionAnalytics/RHadoop/wiki/Downloads

# local

export LD_LIBRARY_PATH=/lib:/lib/x86_64-linux-gnu:/lib64:/usr/lib:/usr/lib64:/usr/local/lib:/usr/local/lib64:/usr/lib/jvm/jdk1.7.0_10/lib:/usr/lib/jvm/jdk1.7.0_10/jre/lib:/usr/lib/jvm/jdk1.7.0_10/jre/lib/amd64:/usr/lib/jvm/jdk1.7.0_10/jre/lib/amd64/server
export HADOOP_HOME=/home/trendwise/apache/hadoop-1.0.4
export HADOOP_BIN=/home/trendwise/apache/hadoop-1.0.4/bin
HADOOP_CONF_DIR=/home/trendwise/apache/hadoop-1.0.4/conf
export HIVE_HOME=/home/trendwise/apache/hive-0.10.0
export HBASE_HOME=/home/trendwise/apache/hbase-0.94.3
export HADOOP_CMD=/home/trendwise/apache/hadoop-1.0.4/bin/hadoop
export HADOOP_STREAMING=/home/trendwise/apache/hadoop-1.0.4/contrib/streaming/hadoop-streaming-1.0.4.jar

# installing packages
R CMD INSTALL rhdfs_1.0.6.tar.gz 
R CMD INSTALL rmr2_2.2.2.tar.gz 

# RHadoop dependencies  
# rmr - RCpp, RJSONIO, digest, functional,stringr, plyr 
# rhdfs- rJava.
# rhbase


# exporting env variables
# requied
Sys.setenv(HADOOP_HOME="/home/trendwise/apache/hadoop-1.0.4");
Sys.setenv(HADOOP_CMD="/home/trendwise/apache/hadoop-1.0.4/bin/hadoop");
#optional
Sys.setenv(HADOOP_BIN="/home/trendwise/apache/hadoop-1.0.4/bin");
Sys.setenv(HADOOP_CONF_DIR="/home/trendwise/apache/hadoop-1.0.4/conf");
Sys.setenv(HIVE_HOME="/home/trendwise/apache/hive-0.10.0");
Sys.setenv(HBASE_HOME="/home/trendwise/apache/hbase-0.94.3");
Sys.setenv(HADOOP_STREAMING='/home/trendwise/apache/hadoop-1.0.4/contrib/streaming/hadoop-streaming-1.0.4.jar')

Sys.setenv(LD_LIBRARY_PATH="/lib:/lib/x86_64-linux-gnu:/lib64:/usr/lib:/usr/lib64:/usr/local/lib:/usr/local/lib64:/usr/lib/jvm/jdk1.7.0_10/lib:/usr/lib/jvm/jdk1.7.0_10/jre/lib:/usr/lib/jvm/jdk1.7.0_10/jre/lib/amd64:/usr/lib/jvm/jdk1.7.0_10/jre/lib/amd64/server");

# Loading library
library(rmr2)
library(rhdfs)

# initializing
hdfs.init()

#listing dir & files
hdfs.ls("/") # list all dir & files in "/"
hdfslist.files("/hivedatabase") # same as hdfs.ls()
hdfs.ls("/tmp") 

# deleting dir & files
hdfs.delete("/notice") # deletes files
hdfs.del("/inputFile") #same as hdfs.delete()

#putting local file
hdfs.put("/home/trendwise/apache/hadoop-1.0.4/CHANGES.txt", "/changes.txt")
hdfs.ls("/")

# file permission
hdfs.file.info("/changes.txt") # first view permission
hdfs.chmod("/changes.txt",permissions="777") # changing permission
hdfs.file.info("/changes.txt") # validate permission

ints = 1:100
doubleInts = sapply(ints, function(x) 2*x)
head(doubleInts)

library(rmr2)
library(rhdfs)

# Example-1
ints = to.dfs(1:100)
calc = mapreduce(input = ints, map = function(k, v) cbind(v, 2*v))
from.dfs(calc)

#example-2
small.ints = to.dfs(1:1000)
mapreduce(input = small.ints, map = function(k, v) cbind(v, v^2))
from.dfs(mapreduce(input = small.ints, map = function(k, v) cbind(v, v^2)))

#example3
groups = rbinom(32, n = 50, prob = 0.4)
tapply(groups, groups, length)

groups = to.dfs(groups)
from.dfs(
	mapreduce(   
		input = groups, 
		map = function(k, v) keyval(v, 1), 
		reduce = function(k, vv) keyval(k, length(vv))
		)
	)


# WordCount
wc.map = 
	function(., lines) {
		keyval( unlist(strsplit(x = lines, split = " ")), 1)
		}

wc.reduce =
	function(word, counts ) {
        keyval(word, sum(counts))
	}






# rmr2
# statistical analysis via MapReduce on a Hadoop cluster.

	# prerequisite
	# Install R, rmr2(imp) & required R packages on each node of the cluster  in a default location accessible to all users
	# A Hadoop cluster, CDH3 and higher or Apache 1.0.2 and higher but limited to mr1,not mr2.
	# environment variables HADOOP_CMD(with exec. script like bin/hadoop) and HADOOP_STREAMING(with streaming jar)



# rhdfs
# connectivity to HDFS
# can browse, read, write, and modify files stored in HDFS.

# Functions 
	# File Manipulations 
		# hdfs.copy, hdfs.move, hdfs.rename, hdfs.delete, hdfs.rm, hdfs.del, hdfs.chown, hdfs.put, hdfs.get
	# File Read/Write 
		# hdfs.file, hdfs.write, hdfs.close, hdfs.flush, hdfs.read, hdfs.seek, hdfs.tell, hdfs.line.reader, hdfs.read.text.file
	# Directory 
		# hdfs.dircreate, hdfs.mkdir
	# Utility 
		# hdfs.ls, hdfs.list.files, hdfs.file.info, hdfs.exists
	# Initialization 
		# hdfs.init, hdfs.defaults

# R objects can be serialized to HDFS via the function: hdfs.write & deserialized from HDFS via the function: hdfs.read





# rhbase
# -using the Thrift server. 
# - can browse, read, write, and modify tables stored in HBASE. 
# - functions in package

	# Table Maninpulation 
		# hb.new.table, hb.delete.table, hb.describe.table, hb.set.table.mode, hb.regions.table
	# Read/Write 
		# hb.insert, hb.get, hb.delete, hb.insert.data.frame, hb.get.data.frame, hb.scan, hb.scan.ex
	# Utility 
		# hb.list.tables
	# Initialization 
		# hb.defaults, hb.init
