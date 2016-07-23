# Importing from the Python Standard Library

################################################################################
# 1st way
import math
math.sqrt(81)

help
help()
modules
modules gzip
symbols
keywords
quit

help(math)
help(math.factorial)
# press "q" to exit from help

math.factorial(5)
math.factorial(6)

n = 5
k = 3
math.factorial(n) / ( math.factorial(k) * math.factorial(n-k) )

# 2nd way
# importing specific function into current namespace
from math import factorial
factorial(n) / ( factorial(k) * factorial(n-k) )

# 3rd way
from math import factorial as fac
fac(n) / ( fac(k) * fac(n-k))

# Python's integer division operator (never gives floating number)
fac(n) // ( fac(k) * fac(n-k))

2**31-1

#
n = 100
k = 2
fac(n) // ( fac(k) * fac(n-k) )
fac(n)
len( str(fac(n)) )

################################################################################
