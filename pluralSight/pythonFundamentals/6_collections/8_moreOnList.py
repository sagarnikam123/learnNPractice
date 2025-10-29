# More on List

################################################################################
w = 'the quick brown fox jumps over the lazy dog'.split()
w
i = w.index('fox')
i
w[i]
w.index('unicorn') # ValueError: 'unicorn' is not in list
w.count('the')
37 in [1, 78, 9, 37, 34, 53]
78 not in [1, 78, 9, 37, 34, 53]

u = 'jackdaws love my big sphinx of quartz'.split()
u
del u[3]
u
u.remove('jackdaws')
u
u.index('matlab') # ValueError: 'matlab' is not in list
del u[u.index('quartz')]
u.remove('pyramid') # ValueError: list.remove(x): x not in list

a = 'I accidentally the whole universe'.split()
a
a.insert(2, 'destroyed')
a
' '.join(a)

################################################################################
