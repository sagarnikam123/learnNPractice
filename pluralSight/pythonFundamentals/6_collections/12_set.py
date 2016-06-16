# Set

################################################################################
# unordered collection of unique, immutable objects
p = {6, 28, 496, 8128, 33550336}
p
type(p)
d = {}
type(d)

# use set() constructor to create set type
# duplicates are removed, accepts iterable series of values
# arbitrary order
e = set()
type(e)
e
s = set([2, 4, 16, 64, 4096, 65536, 262144] )
s

# remove duplicates
t = [1, 4, 2, 1, 7, 9, 9]
set(t)

# iteration
for x in {1, 2, 4, 8, 6, 12}:
    print(x)

# membership/containment
q = {2, 9, 6, 4}
3 in q
3 not in q

# adding single element
k = {81, 108}
k
k.add(54)
k
k.add(12)
k
k.add(108) # duplicates are ignored
k

# adding multiple elements
k.update( [37, 128, 97 ] )
k

# removing elements from set
k
k.remove(97)
k
k.remove(98) # KeyError: 98
k.discard(98) # always succeeds

# copying # shallow
j = k.copy()
j
m = set(j)
m

# set algebra
blue_eyes = {'Olivia', 'Harry', 'Lily', 'Jack', 'Amelia'}
blond_hair = {'Harry', 'Jack', 'Amelia', 'Mia', 'Joshua'}
smell_hcn = {'Harry', 'Amelia'} # Hydrogen cyanide
taste_ptc = {'Harry', 'Lily', 'Amelia', 'Lola'} #Phenylthiocarbamide(PTC)
o_blood = {'Mia', 'Joshua','Lily','Olivia'}
b_blood = {'Amelia', 'Jack' }
a_blood = {'Harry'}
ab_blood = {'Joshua', 'Lola'}

# Union (commutative operation)
blue_eyes.union(blond_hair)
# commutative operation
blue_eyes.union(blond_hair) == blond_hair.union(blue_eyes)

# intersection (commutative)
blue_eyes.intersection(blond_hair)
blue_eyes.intersection(blond_hair) == blond_hair.intersection(blue_eyes)

# difference (non-commutative)
blond_hair.difference(blue_eyes)
# non-commutative
blond_hair.difference(blue_eyes) == blue_eyes.difference(blond_hair)

# symmetric difference (commutative)
blond_hair.symmetric_difference(blue_eyes)
blond_hair.symmetric_difference(blue_eyes) == blue_eyes.symmetric_difference(blond_hair)

# subset
smell_hcn.issubset(blond_hair)
# superset
taste_ptc.issuperset(smell_hcn)
# disjoint
a_blood.isdisjoint(o_blood)

################################################################################
