# Introduction

################################################################################
# using id() constructor, return a unique identifier for an object
# id() deal with object & not the reference
# taking two diff variable & checking
a = 496
id(a)
b = 1729
id(b)
b = a
id(b)
id(a) == id(b)
a is b
a is None

# taking 1 variable & modifying it
t = 5
id(t)
t += 2

# taking 1 variable & modifying it
r = [2, 4, 6]
r
s = r
s[1] = 17
s
r
s is r

# value equality vs. identity equality
p = [4, 7 , 11]
q = [4, 7, 11]
p == q # value equality
p is q # identity equality
p == p

################################################################################
