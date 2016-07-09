package main

func main(){
  numTerms, sum := add(1, 3, 5, 9)
  println("Added:",numTerms, "terms for a total of", sum)
}

func add(terms ...int) (int, int) {
  result := 0
  for _, term := range terms {
    result += term
  }
  return len(terms), result
}
