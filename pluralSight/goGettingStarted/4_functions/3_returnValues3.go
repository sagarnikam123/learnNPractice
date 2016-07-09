package main

func main(){
  numTerms, sum := add(1, 3, 5, 9)
  println("Added:",numTerms, "terms for a total of", sum)
}

func add(terms ...int) (numTerms int, sum int) {
  for _, term := range terms {
    sum += term
  }

  numTerms = len(terms)
  return
}
