import numpy as np
import time
import sys


# numpy array intro
a = np.array([1, 2, 3])
print(a)
print(a[0])
print(a[1])
##########################################################################

# array size comparison
l = range(1000)
print('Python List size: ', sys.getsizeof(5) * len(l))

array = np.arange(1000)
print('Numpy array size: ', array.size * array.itemsize)
##########################################################################

# speed comparison
SIZE = 100000
l1 = range(SIZE)
l2 = range(SIZE)

a1 = np.arange(SIZE)
a2 = np.arange(SIZE)

# python list
start = time.time()
resultList = [(x + y) for x, y in zip(l1, l2)]
print('Python list took(seconds): ', (time.time() - start) * 10000)

# numpy array
start = time.time()
result = a1 + a2
print('Numpy array took(seconds): ', (time.time() - start) * 10000)
##########################################################################

# numpy array operations
a1 = np.array([1, 2, 3])
a2 = np.array([4, 5, 6])
print('Numpy array operations:- ')
print('addition: ', a1 + a2)
print('subtraction: ', a1 - a2)
print('multiplication: ', a1 * a2)
print('division: ', a1 / a2)
##########################################################################
