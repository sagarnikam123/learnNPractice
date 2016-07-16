import scala.collection.mutable.Set
val movieSet = Set("Hitch", "Poltergiest")
movieSet += "Shrek"
println(movieSet)

import scala.collection.immutable.HashSet
val hashSet = HashSet("tomatoes", "Chillies")
println(hashSet + "LadyFinger")
println(hashSet)

import scala.collection.mutable.Map
val treasureMap = Map[Int, String]()
treasureMap += (1 -> "Go to the Island")
treasureMap += (2 -> "Find big X on the ground")
treasureMap += (3 -> "Dig to find the answer")
println(treasureMap)
println(treasureMap(2))
println(treasureMap(1))
println(treasureMap(3))

val romanNumeral = Map( 0 -> "0", 1 -> "I", 2 -> "II", 3 -> "III", 4 -> "IV", 5 -> "V")
println(romanNumeral(0))
println(romanNumeral(1))
println(romanNumeral(3))
