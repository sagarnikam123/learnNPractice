# 08_01-Multi-Input Comprehensions

l = [i * 2 for i in range(10)]
type(l)
dir(l)
l.append(42)

d = {i: i * 2 for i in range(10)}
type(d)
s = {i for i in range(10)}
type(s)
g = (i for i in range(10))
type(g)

points = []
for x in range(5):
    for y in range(3):
            points.append((x,y))

points

values = [ x/(x-y)
    for x in range(100)
    if x > 50
    for y in range(100)
    if x - y != 0 ]

values=[]
for x in range(100):
    if x > 50:
        for y in range(100):
            if (x - y) !=0:
                values.append(x / (x-y))

[(x,y) for x in range(10) for y in range(x)]

result = []
for x in range(10):
    for y in range(x):
        result.append((x,y))

result
