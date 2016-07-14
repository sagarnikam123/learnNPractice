val oneTwo = List(1,2)

val threeFour = List(3,4)

val oneTwoThreeFour = oneTwo ::: threeFour

println(" " + oneTwo + " and " + threeFour + " were not mutated.")

println("Thus, " + oneTwoThreeFour + "is a new List")

val twoThree = List(2,3)

val oneTwoThree = 1 :: twoThree

println(oneTwoThree)

val oneTwoThree = 1 :: 2 :: 3 :: Nil

println(oneTwoThree)
