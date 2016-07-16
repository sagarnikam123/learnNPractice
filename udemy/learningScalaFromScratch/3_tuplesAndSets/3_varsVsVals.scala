var args = Array("abcd", "bcde", "pqrs")

def printArgs(args: Array[String]): Unit = {
  var i = 0
  while (i < args.length){
    println(args(i))
  }
}

def printArgs(args: Array[String]): Unit = {
  for (arg <- args)
    println(arg)
}

def printArgs(args: Array[String]): Unit = {
  args.foreach(println)
}

def formatArgs(args : Array[String])= args.mkString("\n")
println(formatArgs(args))

val res = formatArgs(Array("zero", "one", "two"))
assert(res == "zero\none\ntwo")
