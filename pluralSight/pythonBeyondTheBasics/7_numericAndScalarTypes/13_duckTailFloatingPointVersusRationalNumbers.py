# 07_13-Duck Tail Floating Point Versus Rational Numbers

def sign(x):
    if x < 0:
            return -1
    elif x > 0:
            return 1
    return 0

sign(5)
sign(-5)
sign(0)

False - False
False - True
True - False
True - True

def sign(x):
    return (x > 0) - (x < 0)

sign(-5)
sign(0)
sign(5)

def orientation(p, q, r):
    d = (q[0] - p[0]) * (r[1] - p[1]) - (q[1] - p[1]) * (r[0] - p[0])
    return sign(d)

a = (0, 0)
b = (4, 0)
c = (4, 3)
orientation(a, b, c)
orientation(a, c, b)
d = (8,6)
orientation(a, c, d)

e = (0.5, 0.5)
f = (12.0, 12.0)
g = (24.0, 24.0)
orientation(e, f, g)
e = (0.5, 0.5000000000000018)
orientation(e, f, g)
e = (0.5, 0.5000000000000019)
orientation(e, f, g)

e = (0.5, 0.5000000000000044)
orientation(e, f, g)
e = (0.5, 0.5000000000000046)
orientation(e, f, g)
