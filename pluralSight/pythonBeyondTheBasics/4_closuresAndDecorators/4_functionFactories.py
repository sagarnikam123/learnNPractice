# 04_04-Function Factories

from raise_to import raise_to

square = raise_to(2)
square.__closure__
square(5)
square(9)
square(1234)

cube = raise_to(3)
cube(3)
cube(10)
cube(23)
