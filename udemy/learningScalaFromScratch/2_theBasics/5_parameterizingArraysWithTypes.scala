val greetStrings = new Array[String](3)

greetStrings.update(0, "Hello")
greetStrings.update(1, " , ")
greetStrings.update(2, "World! \n")

for ( i <- 0 to 2)
print(greetStrings.apply(i))

val numNames2 = Array.apply("zero", "one", "two")
