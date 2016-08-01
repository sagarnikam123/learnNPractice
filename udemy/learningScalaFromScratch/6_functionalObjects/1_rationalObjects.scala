class Rational(n : Int, d: Int)

class Rational(n : Int, d: Int){
println("Created" + n + "/" + d)
}

new Rational(1,2)

class Rational(n : Int, d : Int){
override def toString = n + "/" + d
}

val x = new Rational(1,3)
val x = new Rational(5,7)
