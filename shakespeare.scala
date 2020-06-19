import org.apache.spark.SparkConf
import org.apache.spark.SparkContext
import org.apache.spark.rdd.RDD

val conf:SparkConf = new SparkConf().setAppName("shakespeare").setMaster("local")
val sc:SparkContext = new SparkContext(conf)
// Make RDD of lines from text file	
var rdd:RDD[String] = sc.textFile("shakespeare.txt")
// Make 'tall' RDD with words of each line	
var wordsRDD = rdd.flatMap(line => line.split(" ")).map(_.trim)
// Remove empty string
val wordsRDD2 = wordsRDD.filter(_.length > 0)
// Count the words and create dataframe resultand print the first 26 results
var result = wordsRDD2.map(word => (word, 1)).reduceByKey(_+_).toDF.sort($"_2".desc).show(24, false)