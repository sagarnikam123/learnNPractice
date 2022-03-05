# Installing Snappy codec

# Download:-https://code.google.com/p/snappy/
# More info:- https://code.google.com/p/hadoop-snappy/
# Snappy would install lib*snappy.so files under /usr/local/lib directory by default.
#

#  Trendwise
# cp -R /usr/local/lib/lib*snappy*.so* /home/trendwise/apache/hadoop-1.0.4/lib/native/Linux-amd64-64
# cp -R /usr/local/lib/lib*snappy*.so*  /home/trendwise/apacheC/hadoop-1.0.4/lib/native/Linux-amd64-64/.

#  Hadoop
# cp -R /usr/local/lib/lib*snappy*.so* /home/hadoop/apache/hadoop-1.0.4/lib/native/Linux-amd64-64
# cp -R /usr/local/lib/lib*snappy*.so*  /home/hadoop/apacheC/hadoop-1.0.4/lib/native/Linux-amd64-64/.


[hadoop@test-cluster-1 Linux-amd64-64]$ ls -lrt
total 1940
-rw-rw-r-- 1 hadoop hadoop 224086 Mar 25 23:15 libhadoop.so.1.0.0
-rw-rw-r-- 1 hadoop hadoop 224086 Mar 25 23:15 libhadoop.so.1
-rw-rw-r-- 1 hadoop hadoop 224086 Mar 25 23:15 libhadoop.so
-rw-rw-r-- 1 hadoop hadoop   1171 Mar 25 23:15 libhadoop.la
-rw-rw-r-- 1 hadoop hadoop 411654 Mar 25 23:15 libhadoop.a
-rwxrwxr-x 1 hadoop hadoop    957 Jun 29 11:55 libsnappy.la
-rwxrwxr-x 1 hadoop hadoop 369308 Jun 29 11:55 libsnappy.a
-rwxrwxr-x 1 hadoop hadoop 171844 Jun 29 11:55 libsnappy.so
-rwxrwxr-x 1 hadoop hadoop 171844 Jun 29 11:55 libsnappy.so.1
-rwxrwxr-x 1 hadoop hadoop 171844 Jun 29 11:55 libsnappy.so.1.1.3

# Add following in $HBASE_HOME/conf/hbase-env.sh ( change dir as per ur installation)

export HADOOP_CONF_DIR=/home/hadoop/hadoop-0.20.2-hdh3u3/conf
export HBASE_CLASSPATH=$HADOOP_CONF_DIR:/home/hadoop/hbase-hdh3u3/conf/hbase-site.xml
export HBASE_LIBRARY_PATH=$HBASE_LIBRARY_PATH:/home/hadoop/hadoop-0.20.2-hdh3u3/lib/native/Linux-amd64-64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/hadoop/hadoop-0.20.2-hdh3u3/lib/native/Linux-amd64-64
export JAVA_LIBRARY_PATH=$JAVA_LIBRARY_PATH:/home/hadoop/hadoop-0.20.2-hdh3u3/lib/native/Linux-amd64-64
export LIBRARY_PATH=$LIBRARY_PATH:/home/hadoop/hadoop-0.20.2-hdh3u3/lib/native/Linux-amd64-64
Scp the libsnappy* to all your nodes in the cluster

# Restart   hbase and hadoop.
8.       In  hbase shell type following command :     create 'test', { NAME => 'column', COMPRESSION => 'SNAPPY' }
9.       If there is no error snappy is installed properly


# Add in core-site.xml
<property>
    <name>io.compression.codecs</name>
    <value>
      org.apache.hadoop.io.compress.GzipCodec,
      org.apache.hadoop.io.compress.DefaultCodec,
      org.apache.hadoop.io.compress.BZip2Codec,
      org.apache.hadoop.io.compress.SnappyCodec
    </value>
  </property>

#configuration in MapReduce job

Configuration conf = new Configuration();

// Compress Map output
conf.set("mapred.compress.map.output","true");
conf.set("mapred.map.output.compression.codec","org.apache.hadoop.io.compress.SnappyCodec");

// Compress MapReduce output
conf.set("mapred.output.compress","true");
conf.set("mapred.output.compression","org.apache.hadoop.io.compress.SnappyCodec");
################################################3
## Elephant-bird
################################################


Download:- 1) http://goo.gl/C6nPp
		   2) https://github.com/kevinweil/elephant-bird
