package wordCount;

import java.io.IOException;
import java.util.StringTokenizer;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;


public class WordCountMapper extends Mapper<LongWritable,Text,Text,IntWritable>{

	// declaration
	private final IntWritable one = new IntWritable(1);
	private  Text word = new Text();

	protected void map(LongWritable key, Text value, Context context)
			throws IOException, InterruptedException{

		String line = value.toString();
		StringTokenizer tokens = new StringTokenizer(line);

		while(tokens.hasMoreTokens()){
			word.set(tokens.nextToken());
			context.write(word,one);
		}

	} // map

} // Mapper
