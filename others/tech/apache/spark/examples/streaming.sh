# simple Spark Streaming example

# NetworkWordCount

from pyspark import SparkContext
from pyspark.streaming import StreamingContext

# Create a local StreamingContext with two working(execution) thread and batch interval of 1 second
sc = SparkContext("local[2]", "NetworkWordCount")
ssc = StreamingContext(sc, 1)

# Create a DStream(data from a TCP source) that will connect to hostname:port, like localhost:9999
lines = ssc.socketTextStream("localhost", 9999)

# Split each line into words
words = lines.flatMap(lambda line: line.split(" "))

# Count each word in each batch
pairs = words.map(lambda word: (word, 1))
wordCounts = pairs.reduceByKey(lambda x, y: x + y)

# Print the first ten elements of each RDD generated in this DStream to the console
wordCounts.pprint()

ssc.start()             # Start the computation
ssc.awaitTermination()  # Wait for the computation to terminate

# run Netcat (a small utility found in most Unix-like systems) as a data server by using
nc -lk 9999

# Then, in a different terminal, you can start the example by using
