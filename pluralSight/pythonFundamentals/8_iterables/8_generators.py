# Generators

################################################################################
def gen123():
    yield 1
    yield 2
    yield 3

g = gen123()
g
next(g)
next(g)
next(g)
# StopIteration
next(g)

for v in gen123():
    print(v)




h = gen123()
i = gen123()
h
i
h is i
next(h)
next(h)
next(i)
next(i)

def gen246():
    print('About to yeild 2')
    yield 2
    print('About to yield 4')
    yield 4
    print('About to yield 6')
    yield 6
    print('About to return')

g = gen246()
next(g)
next(g)
next(g)
StopIteration
next(g)

################################################################################
