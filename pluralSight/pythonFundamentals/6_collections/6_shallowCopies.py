# Shallow copies

################################################################################
a = [ [1,2], [3,4] ]
a
b = a[:]
a is b
a == b
a[0]
b[0]
a[0] is b[0]

a[0] = [8,9]
a[0]
b[0]

a[1].append(5)
a[1]
b[1]

################################################################################
