class Rational(n: Int, d: Int){
  require(d!=0)
  val number : Int =n
  val denom : Int = d
override def toString = number + "/" + denom
def add(that: Rational) : Rational =
new Rational(
  number * that.denom + that.number * denom,
  number * that.denom
  )
}


val oneHalf = new Rational(1,2)
val twoThirds = new Rational(2,3)
oneHalf add twoThirds

val r = new Rational(1,2)
r.number
r.denom
