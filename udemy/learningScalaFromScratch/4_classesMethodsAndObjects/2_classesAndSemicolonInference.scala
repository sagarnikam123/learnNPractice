class ChecksumAccumulator{
  private var sum = 0
  def add(b: Byte) : Unit = sum += b
  def checksum() : Int = ~(sum & 0xFF) + 1
}

class ChecksumAccumulator{
  private var sum = 0
  def add(b: Byte) {sum +=b}
  def checksum() : Int = ~(sum & 0xFF) + 1
}

def f() : Unit = "this String gets lost"
/*
<console>:7: warning: a pure expression does nothing in statement position; you may be omitting necessary parentheses
       def f() : Unit = "this String gets lost"
                        ^
f: ()Unit
*/

def g() {"this string gets lost too"}
/*
<console>:7: warning: a pure expression does nothing in statement position; you may be omitting necessary parentheses
       def g() {"this string gets lost too"}
                ^
g: ()Unit
*/

def h() = {"this string will be returned"}
h

val s = "hello"; println(s)
