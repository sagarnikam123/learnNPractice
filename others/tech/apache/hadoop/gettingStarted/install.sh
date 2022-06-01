# install hadoop on mac

################################################################################
# pre-requisite

# java
# ssh
sudo port install openssh
# pdsh - Parallel Distributed Shell
sudo port install pdsh

# etc/hadoop/hadoop-env.sh - not required on mac
# JAVA_HOME
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.14.jdk/Contents/Home
# HADOOP_HOME
export HADOOP_HOME=/Users/sagar/Documents/apache/hadoop-3.2.3
# WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native"

# usage documentation for the hadoop script
bin/hadoop
################################################################################
# Pseudo-Distributed ( on single node)

# etc/hadoop/core-site.xml
<configuration>
    <property>
        <name>fs.defaultFS</name>
        <value>hdfs://localhost:9000</value>
    </property>

    <property>
	    <name>hadoop.tmp.dir</name>
	    <value>/Users/sagar/Documents/apache/hadoop-3.2.3/hadoop_temp/</value>
	    <description>A base for other temporary directories.</description>
	</property>
</configuration>

# etc/hadoop/hdfs-site.xml
<configuration>
    <property>
        <name>dfs.replication</name>
        <value>1</value>
    </property>
</configuration>

# setup passphraseless ssh
ssh localhost

# on macos only
# System Preference -> Sharing -> enable Remote Login

ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
################################################################################
# run a MapReduce job locally
# 1. Format the filesystem
bin/hdfs namenode -format

# 2. start NameNode and DataNode daemon
sbin/start-dfs.sh # start the daemons
sbin/stop-dfs.sh # stop the daemons

# check
jps

# web interface for the NameNode - http://localhost:9870/
# Make the HDFS directories required to execute MapReduce jobs
bin/hdfs dfs -mkdir /user
bin/hdfs dfs -mkdir /user/sagar
bin/hdfs dfs -ls /

# copy the local input files into the distributed filesystem
bin/hdfs dfs -put README.txt /README.txt
bin/hdfs dfs -ls / # check

# run examples
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.3.jar
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.3.jar wordcount /README.txt /wordcount

# check results
bin/hdfs dfs -ls /wordcount

# Copy the output files from the distributed filesystem to the local filesystem and examine them
bin/hdfs dfs -get /wordcount wordcount
cat wordcount/*

# stop daemons
sbin/stop-dfs.sh
################################################################################
# YARN on a Single Node

# etc/hadoop/mapred-site.xml
<configuration>
    <property>
        <name>mapreduce.framework.name</name>
        <value>yarn</value>
    </property>
    <property>
        <name>mapreduce.application.classpath</name>
        <value>$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/lib/*</value>
    </property>
</configuration>

# etc/hadoop/yarn-site.xml
<configuration>
    <property>
        <name>yarn.nodemanager.aux-services</name>
        <value>mapreduce_shuffle</value>
    </property>
    <property>
        <name>yarn.nodemanager.env-whitelist</name>
        <value>JAVA_HOME,HADOOP_COMMON_HOME,HADOOP_HDFS_HOME,HADOOP_CONF_DIR,CLASSPATH_PREPEND_DISTCACHE,HADOOP_YARN_HOME,HADOOP_HOME,PATH,LANG,TZ,HADOOP_MAPRED_HOME</value>
    </property>
</configuration>

# start ResourceManager daemon and NodeManager daemon
sbin/start-yarn.sh

# ResourceManager - http://localhost:8088/

# Run a MapReduce job
# stop daemons
sbin/stop-yarn.sh
################################################################################
# start all resource at once
sbin/start-all.sh
# stop all resource at once
sbin/stop-all.sh
################################################################################

# WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable

# Install a JDK: Oracle JDK (suggested) or package openjdk-7-jdk
# Install maven, libssl-dev, build-essential, pkgconf, and cmake
# Install the library protobuf

sudo port install ncurses
sudo port install openssl

# compile source code
tar -zvxf hadoop-3.2.3-src.tar.gz
cd hadoop-3.2.3-src
mvn package -Pdist,native -DskipTests -Dtar
################################################################################
