# 06_06-reprlib

from point import Point2D
import reprlib

points = [Point2D(x, y) for x in range(1000) for y in range(1000)]
len(points)
reprlib.repr(points)
