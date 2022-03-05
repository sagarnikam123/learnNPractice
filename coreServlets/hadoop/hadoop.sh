
#################################
#	CoreServlets - Hadoop	#
#################################

#########################
#	Hadoop -2.x.x	#
#########################

# starting yarn daemons
sbin/start-yarn.sh

# Starting HDFS related daemons
sbin/start-dfs.sh

# delegations to Daemons (separate starting)
sbin/hadoop-daemons.sh start namenode
sbin/hadoop-daemon.sh start secondarynamenode
sbin/hadoop-daemon.sh start datanode
sbin/yarn-daemon.sh start resourcemanager
sbin/yarn-daemon.sh start nodemanager
sbin/mr-jobhistory-daemon.sh start historyserver  # Starts MapReduce history server


localhost:8088 # resource manager
localhost:8042 # node manager
localhost:19888 # Mapreduce History server

# yarn
bin/yarn classpath # prints classpath
bin/yarn node -list # list all node connected to cluster
bin/yarn node -status hadoop:50011 # Status for perticular node id (hadoop:50011)

# Running MapReduce job
bin/yarn jar /home/hadoop/apache/hadoop-2.2.0/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.2.0.jar pi 5 5

# rmadmin
bin/yarn rmadmin # resource manager admin
bin/yarn rmadmin -refreshNodes #allows to refresh & clear resources

# mapred
bin/mapred job # info about jobs , kill jobs
bin/mapred job -list # lists currently working jobs
bin/mapred job -status job_1340417316008_0001 # retriever job's status by ID

# hdfs
bin/hdfs dfs -ls -R / # shows recursively all files inside folder structure

#########################
#	Hadoop -1.x.x	#
#########################

# Running MapReduce - StartsWithCountJob
bin/hdfs dfs -ls /
bin/hadoop dfs -rmr /coreServlets/input/StartsWithCountJob # delete if already present
bin/hadoop dfs -mkdir /coreServlets/input/StartsWithCountJob
bin/hadoop dfs -put README.txt /coreServlets/input/StartsWithCountJob/readme
bin/hadoop dfs -ls /coreServlets/input/StartsWithCountJob

# Running MapReduce -1 - StartsWithCountJob
bin/hadoop jar /home/hadoop/Desktop/learn/BigData/hadoop/coreServlets/StartWithCountJob.jar \
	mapReduce.StartsWithCountJob  /coreServlets/input/StartsWithCountJob/readme /coreServlets/output/StartsWithCountJob
# viewing output
bin/hadoop dfs -ls /coreServlets/output/StartsWithCountJob
bin/hadoop dfs -cat /coreServlets/output/StartsWithCountJob/part-r-00000

# Running MapReduce -2  - CountWordMapperReducer
bin/hadoop dfs -mkdir /coreServlets/input/CountWordMapperReducer
bin/hadoop dfs -put README.txt /coreServlets/input/CountWordMapperReducer/readme
bin/hadoop jar /home/hadoop/Desktop/learn/BigData/hadoop/coreServlets/CountWordMapperReducer.jar \
	otherPractice.CountWordMapperReducer  /coreServlets/input/CountWordMapperReducer/readme /coreServlets/output/CountWordMapperReducer
# viewing output
bin/hadoop dfs -ls /coreServlets/output/CountWordMapperReducer
bin/hadoop dfs -cat /coreServlets/output/CountWordMapperReducer/part-r-00000

# Running MapReduce -3  - WordCount
bin/hadoop dfs -mkdir /coreServlets/input/WordCount
bin/hadoop dfs -put README.txt /coreServlets/input/WordCount/readme
bin/hadoop jar /home/hadoop/Desktop/learn/BigData/hadoop/coreServlets/WordCount.jar \
	wordCount.WordCountDriver  /coreServlets/input/WordCount/readme /coreServlets/output/WordCount
# viewing output
bin/hadoop dfs -ls /coreServlets/output/WordCount
bin/hadoop dfs -cat /coreServlets/output/WordCount/part-r-00000


#########################
#	Hadoop -2.x.x	#
#########################

# mAPrEDUCE VIA Yarn
bin/hdfs dfs -mkdir /coreServlets/input/StartsWithCountJob/
bin/hdfs dfs -copyFromLocal README.txt /coreServlets/input/StartsWithCountJob/readme
bin/yarn jar /home/hadoop/Desktop/learn/BigData/hadoop/coreServlets/StartWithCountJob.jar \
	mapReduce.StartsWithCountJob  /coreServlets/input/StartsWithCountJob/readme /coreServlets/output/StartsWithCountJob
