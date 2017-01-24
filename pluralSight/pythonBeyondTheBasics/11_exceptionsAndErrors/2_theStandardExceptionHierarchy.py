# 11_02-The Standard Exception Hierarchy

s = [1, 4, 6]
# IndexError: list index out of range
s[5]

d = dict(a=65, b=66, c=67)
# KeyError: 'x'
d['x']

IndexError.mro()
KeyError.mro()
