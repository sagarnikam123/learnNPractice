import numpy as np

a = np.array([5, 6, 9])
print('a: ', a)
print('a dimension: ', a.ndim)
print('access elemeent', a[1])
print('itemsize: ', a.itemsize)

print('############### Multidimensional ###############')
t = np.array([ [1, 2], [3, 4], [5, 6]])
print('t: ', t)
print('t dimension: ', t.ndim)
print('access element: ', t[2])
print('itemsize: ', t.itemsize)
