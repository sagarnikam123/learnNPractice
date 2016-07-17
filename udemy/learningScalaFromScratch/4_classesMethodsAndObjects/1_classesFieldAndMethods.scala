class ChecksumAccumulator(
// class definnition goes over here
)

new ChecksumAccumulator

class ChecksumAccumulator{
  var sum = 0
}

val acc = new ChecksumAccumulator
val csa = new ChecksumAccumulator

acc.sum = 3

// <console>:12: error: variable sum in class ChecksumAccumulator cannot be accessed in ChecksumAccumulator
// val $ires1 = acc.sum
acc.sum = 5

class ChecksumAccumulator{
  private var sum = 0

  def add(b : Byte): Unit = {
    sum +=b
  }

  def checksum(): Int = {
    return ~(sum & 0xFF) +1
  }
}


/*
<console>:8: error: reassignment to val
       b = 1
         ^
<console>:9: error: not found: value sum
       sum += b
       ^
*/
def add(b : Byte): Unit = {
  b = 1
  sum += b
}
