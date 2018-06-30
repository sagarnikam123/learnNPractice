def reference_demo(x):
  print("Before assigning: x=", x, " id=", id(x))
  x = 8
  print("After assigning: x=", x, " id=", id(x))

x = 1

print("Before the call: x=", x, " id=", id(x))
reference_demo(x)
print("After the call: x=", x, " id=", id(x))
