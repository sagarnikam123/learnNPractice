# 06_05-Interaction With format()

from point import Point2D

'This is a point {}'.format(Point2D(1,2))
'{}'.format(Point2D(1,2))
'{:r}'.format(Point2D(1,2))
'{!r}'.format(Point2D(1,2))
'{!s}'.format(Point2D(1,2))
