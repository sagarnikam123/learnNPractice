//package practice;


import java.io.IOException;
import java.util.*;

// Apache Hadoop
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.conf.*;
import org.apache.hadoop.io.*;

import org.apache.hadoop.mapreduce.*;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;


 public class WordCount {
	
	// Map
	public static class Map extends Mapper<LongWritable,Text,Text,IntWritable> {

		private final static IntWritable one = new IntWritable(1);
		public Text word = new Text();

		public void map(LongWritable key,Text value,Context context) throws IOException,InterruptedException {
			String line = value.toString();
			StringTokenizer tokenizer = new StringTokenizer(line);

			while(tokenizer.hasMoreTokens()){
				word.set(tokenizer.nextToken());
				context.write(word,one);
			}

		} //map

	} //class Map


	// Reduce
	public static class Reduce extends Reducer<Text,IntWritable,Text,IntWritable>  {

		public void reduce(Text key,Iterable<IntWritable> values,Context context) throws IOException,InterruptedException {
			int sum =0;

			for(IntWritable val: values){
				sum+=val.get();
			}
			context.write(key,new IntWritable(sum));
			
		} //reduce

	} //class Reduce



	// Driver
	public static void main (String [] args) throws Exception{

		Configuration conf = new Configuration();

		Job job = new Job(conf,"wordcount");

		// Mapper & Reducer class
		job.setMapperClass(Map.class);
		job.setReducerClass(Reduce.class);

		// output Key-value Class
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(IntWritable.class);

		// input-output format class
		job.setInputFormatClass(TextInputFormat.class);
		job.setOutputFormatClass(TextOutputFormat.class);

		// file input-output paths
		FileInputFormat.addInputPath(job,new Path(args[0]));
		FileOutputFormat.setOutputPath(job,new Path(args[1]));

		job.waitForCompletion(true);


	} // main / Driver

} //class WordCount
