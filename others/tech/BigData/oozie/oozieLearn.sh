# OozieLearn

# Hadoop
# YAHOO Oozie(GitHub):-https://github.com/yahoo/oozie/downloads
# Apache Oozie:- http://oozie.apache.org/
# EXTJS-http://www.sencha.com/products/extjs/download/


#################################################################################################
#	Important before installation																#
#	Supported Version (Hadoop):-h  0.20.1, 0.20.2, 0.20.104, 0.20.200, 0.23.x and 2.x			#
#	ExtJs :- 2.2 only :-http://extjs.com/deploy/ext-2.2.zip										#
#################################################################################################


#Installation:-
# http://srikanthayalasomayajulu.blogspot.sg/2013/02/apache-oozie-331-installation-on-apache.html
# Install-Tutorial:- http://www.ventlam.org/2012/08/14/oozie-tutorial-part-1-introductioninstall-run-example/
# install- http://practicalcloudcomputing.com/post/26337621577/installing-and-running-apache-oozie-3-2-x-and-possibly

#-cluster
# OOZIE_HOME
export OOZIE_HOME=/home/hadoop/apacheC/oozie-3.0.2
export PATH=$PATH:$OOZIE_HOME/bin
#JAVA-1.7.0_10
export JAVA_HOME=/home/hadoop/apacheC/jdk1.7.0_10
export PATH=$PATH:$JAVA_HOME/bin
#Hadoop-0.20.2
export HADOOP_HOME=/home/hadoop/apacheC/hadoop-0.20.2
export HADOOP_CONF_DIR=/home/hadoop/apacheC/hadoop-0.20.2/conf
export PATH=$PATH:$HADOOP_HOME/bin


#-Single
# OOZIE_HOME
export OOZIE_HOME=/home/trendwise/apache/oozie-3.3.2
export PATH=$PATH:$OOZIE_HOME/bin
#JAVA-1.7.0_10
export JAVA_HOME=/home/trendwise/apache/jdk1.7.0_10
export PATH=$PATH:$JAVA_HOME/bin
#Hadoop-0.20.2
export HADOOP_HOME=/home/trendwise/apache/hadoop-0.23.5
export HADOOP_CONF_DIR=/home/trendwise/apache/hadoop-0.23.5/etc/hadoop
export PATH=$PATH:$HADOOP_HOME/bin



# in Hadoop--core-site.xml
	 <!-- OOZIE -->
	<property>
		<name>hadoop.proxyuser.masternode.hosts</name>
		<value>*</value>
	</property>

	 <property>
		<name>hadoop.proxyuser.masternode.groups</name>
		<value>*</value>
	 </property>


# copy some hadoop jar files to $OOZIE_HOME/libext
cp -R  $HADOOP_HOME/lib/*  $OOZIE_HOME/libext
cp -R $HADOOP_HOME/hadoop-*.jar  $OOZIE_HOME/libext


cp -R $HADOOP_HOME/share/hadoop/tools/lib/* $OOZIE_HOME/libext
cp -R $HADOOP_HOME/share/hadoop/yarn/lib/* $OOZIE_HOME/libext
cp -R $HADOOP_HOME/share/hadoop/common/lib/* $OOZIE_HOME/libext
cp -R $HADOOP_HOME/share/hadoop/hdfs/lib/* $OOZIE_HOME/libext
cp -R $HADOOP_HOME/share/hadoop/mapreduce/lib/* $OOZIE_HOME/libext

# building Distro
cd $OOZIE_HOME/distro/src/main
bin/mkdistro.sh -DskipTests

# this will create 2 folder-- downloads & target


# Building with ExtJS library for Oozie Web Console
	# Copy the extjs-2.2.zip over to $OOZIE_HOME/webapp/src/main/webapp/
	cp /home/trendwise/Downloads/JavaScript/extjs/ext-2.2.zip  $OOZIE_HOME/webapp/src/main/webapp/

	#Run oozie-setup.sh to create an oozie.war file
	# no requirement of starting Hadoop
	cd $OOZIE_HOME/distro/target/oozie-3.3.2-distro/oozie-3.3.2
	bin/oozie-setup.sh -hadoop hadoop-0.23.5 $HADOOP_HOME -extjs $OOZIE_HOME/webapp/src/main/webapp/ext-2.2.zip
	#if command successful you will get like
	# New Oozie WAR file with added 'Hadoop JARs, ExtJS library' at
	# /home/trendwise/apache/oozie-3.3.2/distro/target/oozie-3.3.2-distro/oozie-3.3.2/oozie-server/webapps/oozie.war
	# INFO: Oozie is ready to be started


	#oozie.war file to your Tomcat deployment directory
	cp $OOZIE_HOME/distro/target/oozie-3.3.2-distro/oozie-3.3.2/oozie-server/webapps/oozie.war   $OOZIE_HOME/webapp/src/main/webapp/oozie.war

# editing oozie-site.xml
# go to /home/trendwise/apache/oozie-3.3.2/distro/target/oozie-3.3.2-distro/oozie-3.3.2/conf & edit oozie-site.xml
# change property value of oozie.service.JPAService.create.db.schema from "false" to "true'

$OOZIE_HOME/distro/target/oozie-3.3.2-distro/oozie-3.3.2/bin/ooziedb.sh create -sqlfile oozie.sql -run
# output
#   setting CATALINA_OPTS="$CATALINA_OPTS -Xmx1024m"
#
# Validate DB Connection
# DONE
# Check DB schema does not exist
# DONE
# Check OOZIE_SYS table does not exist
# DONE
# Create SQL schema
# DONE
# Create OOZIE_SYS table
# DONE
#
# Oozie DB has been created for Oozie version '3.3.2'
#
#
# The SQL commands have been written to: oozie.sql

# Starting Oozie server
cd $OOZIE_HOME/distro/target/oozie-3.3.2-distro/oozie-3.3.2
bin/oozie-start.sh

# To start Oozie as a foreground process run:
bin/oozie-run.sh

# Check the Oozie log file for any error
  $OOZIE_HOME/distro/target/oozie-3.3.2-distro/oozie-3.3.2/logs/oozie.log

# Using the Oozie command line tool check the status of Oozie:
cd $OOZIE_HOME/distro/target/oozie-3.3.2-distro/oozie-3.3.2
bin/oozie admin -oozie http://localhost:11000/oozie -status

# checking in browser
	http://localhost:11000/oozie/

# Running Examples

	# make some folders in HDFS
	cd $HADOOP_HOME
	bin/hadoop fs -mkdir /user/
	bin/hadoop fs -mkdir /user/oozie
	bin/hadoop fs -ls /user


	bin/hadoop fs -mkdir /user/
	bin/hadoop fs -mkdir /user/trendwise
	bin/hadoop fs -ls /user

# unzip oozie-example.tar.gz
cd $OOZIE_HOME/distro/target/oozie-3.3.2-distro/oozie-3.3.2
tar -xvzf oozie-examples.tar.gz

# oozie maintain mapreduce,hive,pig jobs in different folders
# we are running mapreduce examples here so edit properties according to your hadoop properties
edit file job.properties in /examples/apps/map-reduce/job.properties

# copy exmaples directory to the user HOME directory in HDFS
bin/hadoop fs -copyFromLocal $OOZIE_HOME/distro/target/oozie-3.3.2-distro/oozie-3.3.2/examples hdfs:/user/oozie/

bin/hadoop fs -copyFromLocal $OOZIE_HOME/distro/target/oozie-3.3.2-distro/oozie-3.3.2/examples hdfs:/user/trendwise/

# running map-reduce example
cd $OOZIE_HOME/distro/target/oozie-3.3.2-distro/oozie-3.3.2
bin/oozie job -oozie http://localhost:11000/oozie -config  examples/apps/map-reduce/job.properties -run


# oozie will generate a job id for the example job as :
# job: 0000000-131010162517449-oozie-tren-W
# get job info in terminal
bin/oozie job -oozie http://localhost:11000/oozie -info 0000000-131010162517449-oozie-tren-W

# you can view similar job with job-id in Workflow panel of oozie window at http://localhost:11000/oozie/
