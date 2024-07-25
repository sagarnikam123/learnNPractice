# simpleExamples

# on scala shell
/bin/spark-shell --master local[2]

# examples
import spark.implicits._
val data = Seq(("Java", "20000"), ("Python", "100000"), ("Scala", "3000"))
val df = data.toDF()
df.show()
