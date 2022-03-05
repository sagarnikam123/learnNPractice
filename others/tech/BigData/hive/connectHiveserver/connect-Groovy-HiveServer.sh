# Connecting to HiveServer
#using Groovy Client


#download groovy from :- http://groovy.codehaus.org/Download?nc
# unzip /groovy-2.1.6
# add all Hive JARs to Groovy’s classpath by editing the groovy-starter.conf
# to allow Groovy to communicate with Hive without having to manually load JAR files each session


# groovy-starter.conf

   # load required libraries
    load !{groovy.home}/lib/*.jar

    # load user specific libraries
    load !{user.home}/.groovy/lib/*.jar

    # tools.jar for ant tasks
    load ${tools.jar}

    #Loading configuration for Hive-client
    # loading all requied jar

    #Hadoop
    load /home/trendwise/apache/hadoop-1.0.4/*.jar
    load /home/trendwise/apache/hadoop-1.0.4/lib/*.jar

    #Hive
    load /home/trendwise/apache/hive-0.10.0/lib/*.jar


# start groovy using groovysh.sh
bin/groovysh



// Note in groovy single line comment --> //

// import Hive- and Thrift-related classes. These classes are used to connect
//  to Hive and create an instance of HiveClient.

import org.apache.hadoop.hive.service.*;
import org.apache.thrift.protocol.*;
import org.apache.thrift.transport.*;
transport = new TSocket("localhost" , 10000);
protocol = new TBinaryProtocol(transport);
client = new HiveClient(protocol);
transport.open()

client.execute("show databases"); // executing queries
client.fetchAll(); //fetch all rows at time

client.execute("use default");
client.execute("show tables");
client.fetchAll();

client.execute("select * from books");
client.fetchAll();

client.getQueryPlan();



client.getSchema(); // getting schema
client.getClusterStatus(); // getting cluster status


// Fetching result
client.fetchOne(); // fetch one by one,if no database present only show "default" database

client.fetchAll(); //fetch all rows at time.

client.fetchN(2);  // fetches N rows at a time.
