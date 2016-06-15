


trendwise@masternode:~/groovy-2.1.6$ bin/groovysh
Groovy Shell (2.1.6, JVM: 1.7.0_21)
Type 'help' or '\h' for help.
--------------------------------------------------------------------------------
groovy:000> import org.apache.hadoop.hive.service.*;
===> [import org.apache.hadoop.hive.service.*;]
groovy:000> import org.apache.thrift.protocol.*;
===> [import org.apache.hadoop.hive.service.*;, import org.apache.thrift.protocol.*;]
groovy:000> import org.apache.thrift.transport.*;
===> [import org.apache.hadoop.hive.service.*;, import org.apache.thrift.protocol.*;, import org.apache.thrift.transport.*;]
groovy:000> transport = new TSocket("localhost" , 10000);
===> org.apache.thrift.transport.TSocket@12fc2eac
groovy:000> protocol = new TBinaryProtocol(transport);
===> org.apache.thrift.protocol.TBinaryProtocol@1d5216b7
groovy:000> client = new HiveClient(protocol);
===> org.apache.hadoop.hive.service.HiveClient@226ccbb3
groovy:000> transport.open()
===> null
groovy:000> client.execute("show databases"); // executing queries
===> null
groovy:000> client.fetchAll(); //fetch all rows at time
===> [abc, default, mcndata]
groovy:000> client.execute("use default");
===> null
groovy:000> client.execute("show tables");
===> null
groovy:000> client.fetchAll();
===> [books]
groovy:000> client.execute("select * from books");
===> null
groovy:000> client.fetchAll();
===> [123	kkkkkA	2013, 321	TORRA	2000, 12786	java	1934, 13331	MySQL	1919, 14356	PHP	1966, 15729	PERL	1932, 16284	Oracle	1996, 17695	Pl/SQL	1980, 19264	JavaScript	1992, 19354	www.java2s.com	1993]
groovy:000> client.getSchema(); // getting schema
===> Schema(fieldSchemas:[FieldSchema(name:bookid, type:int, comment:null), FieldSchema(name:booktitle, type:string, comment:null), FieldSchema(name:copyrith, type:int, comment:null)], properties:null)
groovy:000> client.getClusterStatus(); // getting cluster status
===> HiveClusterStatus(taskTrackers:1, mapTasks:0, reduceTasks:0, maxMapTasks:2, maxReduceTasks:2, state:RUNNING)
groovy:000> client.fetchAll();
===> []
groovy:000> client.execute("select * from books");
===> null
groovy:000> client.fetchOne();
===> 123	kkkkkA	2013
groovy:000> client.fetchN(2);
===> [321	TORRA	2000, 12786	java	1934]
groovy:000> exit //exiting from groovy