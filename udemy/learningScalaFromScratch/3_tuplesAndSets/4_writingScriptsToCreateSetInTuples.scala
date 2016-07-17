import scala.io.Source

def widthOfLength(s : String) = s.length.toString.length

if ( args.length > 0 ){
  val lines = Source.fromFile(args(0)).getLines.toList
  val longetstLine = lines.reduceleft(
    (a, b) => (a.length > b.length) a else b
  )

  val maxWidth = widthOfLength(longestLine)
  for(line <- lines){
    val numSpaces = maxWidth - widthOfLength(Line)
    val padding = " " * numSpaces
    print(padding + line.length + " | " + line)
  }

} else{
  Console.err.println("Please enter filename")
}
