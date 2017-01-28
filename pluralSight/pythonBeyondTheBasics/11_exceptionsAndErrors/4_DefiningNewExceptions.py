# 11_04-Defining New Exceptions

from heron import *
triangle_area(3, 4, 5)
# ValueError: math domain error
triangle_area(3, 4, 10)

# heron.TriangleError: 'Illegal triangle' for sides (3, 4, 10)
triangle_area(3, 4, 10)
