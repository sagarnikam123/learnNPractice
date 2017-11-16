# Installing  Apache Hadoop (0.20x or 1.x) on Linux
# more info:- http://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-single-node-cluster/

# install pre-requisite
sudo apt-get install python-software-properties

# Download Apache Hadoop (0.20x or 1.x) 
http://hadoop.apache.org/

# Download JDK-7
http://www.oracle.com/technetwork/java/javase/downloads/index.html

# installing & configuring SSH
 sudo apt-get install openssh-server openssh-client
 
 # configuration
 ssh-keygen
 cd  .ssh
 ls
 ssh-copy-id -i id_rsa.pub localhost
 ssh localhost
 exit
 
# Disabling IVP6 
sudo gedit /etc/sysctl.conf 

	# disable ipv6
	net.ipv6.conf.all.disable_ipv6 = 1
	net.ipv6.conf.default.disable_ipv6 = 1
	net.ipv6.conf.lo.disable_ipv6 = 1


#untar Hadoop
tar -xvf hadoop-1.0.4.tar.gz

# editing $HADOOP_HOME/conf

sudo gedit hadoop-env.sh 
#hadoop-env.sh
	export HADOOP_OPTS=-Djava.net.preferIPv4Stack=true
	export JAVA_HOME=/home/hadoop/apache/jdk1.7.0_25
	export PATH=$PATH:$JAVA_HOME/bin


sudo gedit core-site.xml
# core-site.xml
	<property>
	  <name>hadoop.tmp.dir</name>
	  <value>/home/hadoop/apache/hadoop-1.0.4/hadoop_temp/</value>
	  <description>A base for other temporary directories.</description>
	</property>

	<property>
	  <name>fs.default.name</name>
	  <value>hdfs://localhost:54310</value>
	  <description>The name of the default file system.  A URI whose
	  scheme and authority determine the FileSystem implementation.  The
	  uri's scheme determines the config property (fs.SCHEME.impl) naming
	  the FileSystem implementation class.  The uri's authority is used to
	  determine the host, port, etc. for a filesystem.</description>
	</property>

sudo gedit hdfs-site.xml
# hdfs-site.xml
	<property>
	  <name>dfs.replication</name>
	  <value>1</value>
	  <description>Default block replication.
	  The actual number of replications can be specified when the file is created.
	  The default is used if replication is not specified in create time.
	  </description>
	</property>
    
sudo gedit mapred-site.xml    
#mapred-site.xml
	<property>
	  <name>mapred.job.tracker</name>
	  <value>hdfs://localhost:54311</value>
	  <description>The host and port that the MapReduce job tracker runs
	  at.  If "local", then jobs are run in-process as a single map
	  and reduce task.
	  </description>
	</property>   

# Formatting NameNode
bin/hadoop namenode -format


#starting Hadoop
bin/start-all.sh

# Open in web-browser
NameNode- http://localhost:50070
JobTracker- http://localhost:50030 
TaskTracker- http://localhost:50060

#Hadoop report
bin/hadoop dfsadmin -report

# Hadoop is listening on configured port
netstat -plten | grep java
lsof -i


# HDFS commands
bin/hadoop fs -ls /
# storing Local file to HDFS
bin/hadoop fs -put README.txt /

# in-built Examples in Hadoop distribution
bin/hadoop jar hadoop-

# Running wordcount examples
bin/hadoop jar hadoop-1.0.4.jar wordcount /README.txt /wordcount

# view result
bin/hadoop fs -ls /wordcount
bin/hadoop fs -cat /wordcount/part-r-00000
