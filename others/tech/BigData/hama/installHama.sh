## Apache Hama - Installation & Examples


# Prequisite

1. [Apache Hama](http://hama.apache.org/ "Apache Hama Homepage")
2. [Apache Hadoop](http://hadoop.apache.org/ "Apache Hadoop Homepage")  [ [installation guide] ](https://coderwall.com/p/a5kbtw?i=2&p=1&q=author%3Asagarnikam123&t[]=sagarnikam123 "Installing Apache Hadoop on Linux ")
3. [JDK-6](http://www.oracle.com/technetwork/java/javase/downloads/index.html "Oracle JDK") or higher

### download & extract

sh
  cd /home/hadoop/apache
  tar -xvfz /home/hadoop/Downloads/hama-0.6.2.tar.gz



# ----------------------------------------------------------------------------
#   Configuration & Installation (pseudo-distributed)
# ----------------------------------------------------------------------------

* editing hama-env.sh (editing paths)

	#Hama home
	export HAMA_HOME=/home/trendwise/apache/hama-0.6.2

	# The java implementation to use.  Required.
	# export JAVA_HOME=/usr/lib/jvm/java-7-oracle
	export JAVA_HOME=/home/trendwise/apache/jdk1.7.0_10
	export PATH=$PATH:$JAVA_HOME/bin

	# Where log files are stored.  $HAMA_HOME/logs by default.
	export HAMA_LOG_DIR=${HAMA_HOME}/logs

	# Tell Hama whether it should manage it's own instance of Zookeeper or not.
	export HAMA_MANAGES_ZK=true

* hama-site.xml

	<property>
      <name>bsp.master.address</name>
      <value>localhost:40000</value>
      <description>The address of the bsp master server. Either the
      literal string "local" or a host:port for distributed mode
      </description>
    </property>

    <property>
      <name>fs.default.name</name>
      <value>hdfs://localhost:54310/</value>
      <description> The name of the default file system. Either the literal string
        "local" or a host:port for HDFS.
      </description>
    </property>

    <property>
      <name>hama.zookeeper.quorum</name>
      <value>localhost</value>
      <description>Comma separated list of servers in the ZooKeeper Quorum.
      For example, "host1.mydomain.com,host2.mydomain.com,host3.mydomain.com".
      By default this is set to localhost for local and pseudo-distributed modes
      of operation. For a fully-distributed setup, this should be set to a full
      list of ZooKeeper quorum servers. If HAMA_MANAGES_ZK is set in hama-env.sh
      this is the list of servers which we will start/stop zookeeper on.
      </description>
    </property>


# Starting Hama Cluster
export HAMA_HOME=/home/trendwise/apache/hama-0.6.2
cd $HAMA_HOME
bin/start-bspd.sh # will starts a BSPMaster, GroomServers and Zookeeper


# Stopping Hama Cluster
cd $HAMA_HOME
bin/stop-bspd.sh



#checking Hama runs
jps

20265 TaskTracker
20738 BSPMasterRunner
19788 SecondaryNameNode
19415 DataNode
21117 Jps
19881 JobTracker
21064 GroomServerRunner
19032 NameNode
20692 ZooKeeperRunner

# open in browser- information about BSP job statistics of the Hama cluster, running/completed/failed jobs.
http://localhost:40013


# Running hama examples
cd $HAMA_HOME
bin/hama jar hama-examples-0.6.2.jar


# Running PageRank example

	# generate a symmetric adjacency matrix using the gen command
	#create a graph with 100 nodes and 1K edges and store 2 partitions on HDFS as the sequence file
	cd $HAMA_HOME
	bin/hama jar hama-examples-0.6.2.jar gen symmetric 100 10 randomgraph 2

	# view generated seq files
	$HADOOP_HOME/bin/hadoop fs -ls /user/trendwise/randomgraph

	# run PageRank
	bin/hama jar hama-examples-0.6.2.jar pagerank randomgraph pagerankresult 3

	#view results
	bin/hadoop fs -ls /user/trendwise/pagerankresult/
	bin/hadoop fs -cat /user/trendwise/pagerankresult/part-00000
	bin/hadoop fs -cat /user/trendwise/pagerankresult/part-00001
