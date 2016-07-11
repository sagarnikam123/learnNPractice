package main

func main(){
  abcGen()
}

func abcGen(){
  for l := byte('a'); l <= byte('z'); l++ {
    println(string(l))
  }
}
