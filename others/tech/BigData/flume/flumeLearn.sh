# Apache Flume Learn


# edit : conf/flume-evn.sh
export JAVA_HOME=/home/trendwise/apache/jdk1.7.0_10
export PATH=$PATH:$JAVA_HOME/bin

#Hadoop-1.0.4
export HADOOP_HOME=/home/hadoop/apache/hadoop-1.0.4
export HADOOP_CONF_DIR=/home/hadoop/apache/hadoop-1.0.4/conf
export PATH=$PATH:$HADOOP_HOME/bin

# Starting flume agent
# bin/flume-ng agent -n $agent_name -c conf -f conf/flume-conf.properties.template
# bin/flume-ng agent --conf conf --conf-file example.conf --name a1 -Dflume.root.logger=INFO,console

# running
bin/flume-ng agent --conf conf -n syslog-agent -f conf/syslog-agent.cnf

# Open terminal & put
telnet localhost 5140
