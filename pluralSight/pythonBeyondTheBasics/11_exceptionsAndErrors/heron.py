import math

class TriangleError(Exception):

    def __init__(self, text, sides):
        super().__init__(text)
        self._sides = tuple(sides)

    @property
    def sides(self):
        return self._sides

    def __str__(self):
        return "'{}' for sides {}".format(self.args[0], self._sides)

    def __repr__(self):
        return "TriangleError {!r}, {!r}".format(self.args[0], self._sides)

def triangle_area(a, b, c):
    sides = sorted((a, b, c))
    if sides[2] > ( sides[0] + sides[1]):
        raise TriangleError("Illegal triangle", sides)
    p = (a + b + c) / 2
    a = math.sqrt(p *(p -a) * (p -b) * (p -c))
    return a
