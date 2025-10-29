# List

################################################################################
# heterogeneous mutable sequence
s = 'show how to index into sequences'.split()
s
# using positive indexes
s[4]
s[1]
# using negative indexes
s[-5]
# slicing
s[1:4]
s[1:-1]
s[1:-4]
s[1:-2]
s[3:]
s[:]
s[:4]

full_slice = s[:]
full_slice
full_slice is s
full_slice == s

# using copy()
u = s.copy()
u
# using list()
v = list(s)
v

################################################################################
