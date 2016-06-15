# Tuple

################################################################################
# heterogeneous immutable sequence

# creating & access
t = ("Norway", 4.953, 3)
t
t[0]
t[2]
len(t)
# iterating
for item in t:
    print(item)
# concatenate & repeat
t + (338186.0, 265e9)
t * 3
#nesting
a = ( (220, 284), (1184, 1210), (2620,2924), (5020,5564) )
a[2]
a[2][1]
type(a)
# can't use one object in parentheses as a single element tuple
h = (391)
h
type(h)
# trailing comma for single element tupel
k = (391, )
k
type(k)
# empty Tuple
e = ()
e
type(e)
# delimiting parentheses are optional for one/multi elements
p = 1,1,1,4,6,19
p
type(p)
# tuples useful for multiple return value
def minmax(items):
    return min(items)  , max(items)
minmax( [83,33,84,32,85,31,86] )
# tupel unpacking (allows to destructure directly into named references)
lower, upper = minmax( [83,33,84,32,85,31,86] )
lower
upper
# tuple unpacking works with arbitrarily nested tupels
# (although not with other data structures)
(a, (b, (c, d))) = (4, (3, (2,1)))
a
b
c
d
# idomatic python swap
# a,b = b, a
a = 'jelly'
b = 'bean'
a, b = b, a
a
b
# using tuple(iterable) constructor from other iterable series of objects
tuple( [561, 1105, 1729, 2465] )
tuple( "Carmichael" )
# membership testing using 'in' & 'not in' operator with tuple
5 in (3, 5, 17, 257, 65537)
5 not in (3, 5, 17, 257, 65537)

################################################################################
