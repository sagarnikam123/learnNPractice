# Range

################################################################################
# arithmatic progression of integers

range(5)
for i in range(5):
    print(i)
range(5,10)
list(range(5,10))
list(range(10,15))
#optional step argument
list(range(0,10,2))

# abusing range (don't use un-pythonic way)
# python is not 'c'
s = [0, 1, 4, 6, 13]
for i in range(len(s)) :
     print(s[i])
# prefer direct iteration over iterable object like list
for v in s :
    print(v)

# prefer enumerate() for counters
# enumerate() yields(index, value) tuple
t = [6, 372, 8862, 148800, 2096886]
for p in enumerate(t):
    print(p)
for i, v in enumerate(t):
    print("i = {}, v = {}".format(i,v))

################################################################################
