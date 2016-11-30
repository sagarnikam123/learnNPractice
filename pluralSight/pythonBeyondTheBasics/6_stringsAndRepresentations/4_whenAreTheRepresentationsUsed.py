# 06_04-When Are the Representations Used

from point import Point2D
str(Point2D(3,5))
repr(Point2D(3,5))
print(Point2D(x=3, y=5))

#comment __str__
from point import Point2D
p = Point2D(45, 54)
str(p)

#comment __repr__
from point import Point2D
p = Point2D(45, 54)
# '<point.Point2D object at 0x7f36718c6b38>'
repr(p)

# uncomment everything
from point import Point2D

l = [Point2D(i, i * 2) for i in range(3)]
str(l)
repr(l)

d = {i : Point2D(i, i * 2) for i in range(3)}
str(d)
repr(d)
