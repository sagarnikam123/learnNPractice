class ChecksumAccumulator{
  private var sum = 0
  def add(b: Byte) {sum +=b}
  def checksum() : Int = ~(sum & 0xFF) + 1
}

import scala.collection.mutable.Map

object ChecksumAccumulator{
  private val cache = Map[String, Int]()

  def calculates(s : String): Int =
  if (cache.contains(s))
    cache(s)
  else{
    val acc = new ChecksumAccumulator
    for (c <- s)
      acc.add(c.toByte)
    val cs = acc.checksum()
    cache += (s -> cs)
    cs
  }
}

import ChecksumAccumulator.calculates
object Summer{
  def main(args : Array[String]){
    for (arg <- args)
      println(arg + " : " + calculates(arg) )
  }
}
