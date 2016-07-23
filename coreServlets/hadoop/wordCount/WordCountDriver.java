/*

 	#########################################
	#	WordCount - tested on Hadoop-1.x.x	#
	######################################### 

	
	# preparing input files & directory
		bin/hadoop dfs -mkdir /coreServlets/input/WordCount
		bin/hadoop dfs -put README.txt /coreServlets/input/WordCount/readme
	# Running MapReduce - WordCount
		bin/hadoop jar /home/hadoop/Desktop/learn/BigData/hadoop/coreServlets/WordCount.jar \
			wordCount.WordCountDriver  /coreServlets/input/WordCount/readme /coreServlets/output/WordCount
	# viewing output
		bin/hadoop dfs -ls /coreServlets/output/WordCount
		bin/hadoop dfs -cat /coreServlets/output/WordCount/part-r-00000

*/

package wordCount;

import org.apache.hadoop.fs.Path;
import org.apache.hadoop.conf.Configured;
import org.apache.hadoop.util.Tool;
import org.apache.hadoop.util.ToolRunner;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;


public class WordCountDriver extends Configured implements Tool {
	
	public static void main(String [] args) throws Exception {
		
		int exitCode = ToolRunner.run(new WordCountDriver(),args);
		System.exit(exitCode);
		
	} //main

	@Override
	public int run(String[] args) throws Exception {
		// 
		
		Job job = new Job(getConf(),"WordCount");
		
		job.setJarByClass(WordCountDriver.class);
		
		// Mapper-Reducer
		job.setMapperClass(WordCountMapper.class);
		job.setReducerClass(WordCountReducer.class);
		
		// input-output format class
		job.setInputFormatClass(TextInputFormat.class);
		job.setOutputFormatClass(TextOutputFormat.class);
		
		// io-path
		TextInputFormat.addInputPath(job, new Path(args[0]));
		TextOutputFormat.setOutputPath(job, new Path(args[1]));
		
		//key-value class
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(IntWritable.class);
				
		return job.waitForCompletion(true) ? 0 : 1;
	} // run

	
} // class - WordCountDriver
