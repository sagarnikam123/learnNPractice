package main

func main() {
  var myInt int
  myInt = 42
  println(myInt)

  var myFloat32 float32 = 42.
  println(myFloat32)

  myString := "Hello Go!"
  println(myString)

  myComplex := complex(2,3)
  println(myComplex)
  println(real(myComplex))
  println(imag(myComplex))
}
