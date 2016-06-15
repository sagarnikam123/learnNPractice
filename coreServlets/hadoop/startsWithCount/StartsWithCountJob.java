/*
	
	#############################################
	#	StartsWithcount- tested on Hadoop-1.x.x	#
	#############################################
	
	
	# preparig input files & directory
		bin/hdfs dfs -ls /
		bin/hadoop dfs -mkdir /coreServlets/input/StartsWithCountJob
		bin/hadoop dfs -put README.txt /coreServlets/input/StartsWithCountJob/readme
		bin/hadoop dfs -ls /coreServlets/input/StartsWithCountJob
	# Running MapReduce - StartsWithCountJob
		bin/hadoop jar /home/hadoop/Desktop/learn/BigData/hadoop/coreServlets/StartWithCountJob.jar \
			startsWithCount.StartsWithCountJob  /coreServlets/input/StartsWithCountJob/readme /coreServlets/output/StartsWithCountJob
	# viewing output
		bin/hadoop dfs -ls /coreServlets/output/StartsWithCountJob
		bin/hadoop dfs -cat /coreServlets/output/StartsWithCountJob/part-r-00000
 */

package startsWithCount;

import org.apache.hadoop.conf.Configured;
import org.apache.hadoop.fs.Path;

import org.apache.hadoop.util.Tool;
import org.apache.hadoop.util.ToolRunner;

import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;


import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.IntWritable;

public class StartsWithCountJob extends Configured implements Tool{

	@Override
	public int run (String [] args) throws Exception{
		
		Job job = new Job(getConf(),"Start with count");
		job.setJarByClass(getClass());
		
		// configure output and input source
		TextInputFormat.addInputPath(job, new Path(args[0]));
		job.setInputFormatClass(TextInputFormat.class);
		
		// configure mapper and reducer
		job.setMapperClass(StartsWithCountMapper.class);
		job.setCombinerClass(StartsWithCountReducer.class);
		job.setReducerClass(StartsWithCountReducer.class);
		
		// configure output
		TextOutputFormat.setOutputPath(job, new Path(args[1]));
		job.setOutputFormatClass(TextOutputFormat.class);
		
		// key-value class
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(IntWritable.class);
			
		
		return job.waitForCompletion(true) ? 0 : 1;
	} // run
	
	public static void main(String [] args) throws Exception{
		int exitCode = ToolRunner.run(new StartsWithCountJob(),args);
		System.exit(exitCode);
		
	} // main
} // StartsWithCountJob - main
