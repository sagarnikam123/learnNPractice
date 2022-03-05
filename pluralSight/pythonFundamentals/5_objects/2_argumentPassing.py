# Argument parsing

################################################################################
m = [9, 15, 24]
def modify(k):
    k.append(39)
    print("k = ", k)

modify(m)
m

f = [14, 23, 37]
def replace(g):
    g = [17, 28, 45]
    print("g = ", g)

replace(f)
f

# modifying contents
def replace_contents(g):
    g[0] = 17
    g[1] = 28
    g[2] = 45
    print("g = ", g)

f
replace_contents(f)
f
# pass by object
def f(d):
    return d

c = [6, 10, 16]
e = f(c)
c is e

################################################################################
