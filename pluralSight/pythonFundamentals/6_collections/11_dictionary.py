# Dictionary

################################################################################
# unordered mapping from unique, immutable keys to mutable values
# arbitrary order

urls = {'Google' : 'http://google.com',
        'Pluralsight' : 'http://pluralsight.com',
        'Sixty North' : 'http://sixty-north.com',
        'Microsoft' : 'http://microsoft.com' }
urls
urls['Pluralsight']
# using dict() constructor
# accepts iterable series of key-value 2-tuples
names_and_ages = [('Alice', 32), ('Bob', 48 ), ('Charlie', 28), ('Daniel', 33)  ]
names_and_ages
d = dict(names_and_ages)
d
# dict copying
d = dict( goldenrod=0xDAA520, indigo=0x4B0082, seashell=0xFFF5EE )
d
e = d.copy()
e
f = dict(e)
f
j = e
j
# updating a dictionary
g = dict( wheat=0xF5DEB3, khaki=0xF0E68C, crimson=0xDC143C )
g
f.update(g)
f
# update replaces values corresponding to duplicate keys
stocks = { 'GOOG' : 891, 'APPL' : 416, 'IBM' : 194 }
stocks.update( { 'GOOG' : 894, 'YHOO' : 25  } )
stocks
# iteration
colors = dict( aquamarine='#7FFFD4', burlywood='#DEB887',
               chartreuse='#7FFF00', cornflower='#6495ED',
               firebrick='#B22222', honeydew='#F0FFF0',
               maroon='#B03060', sienna='#A0522D' )
for key in colors :
    print('{key} => {value}'.format(key=key, value=colors[key]) )

for value in colors.values():
    print(value)

for key in colors.keys():
    print(key)

for a in colors.items():
    print(a)

for key, value in colors.items():
    print(' {key} => {value}'.format(key=key,value=value)  )
# 'in' & 'not in' operators works on dict
symbols = dict ( usd='\u0024', gbp='\u00a3', nzd='\u0024', krw='\u20a9',
                 eur='\u20ac', jpy='\u00a5', nok='kr', ils='\u20aa', hhg='Pu' )
symbols
'nzd' in symbols
'mkd' in symbols
# remove using 'del'
z = { 'H':1, 'Tc':43, 'Xe':54, 'Un':137, 'Rf':104, 'Fm':100 }
z
del z['Un']
z
# Mutability
# keys - immutable, values - mutable, dict - mutable
m = { 'H': [1,2,3],
      'He': [3,4],
      'Li': [6,7],
      'Be': [7,9,10],
      'B': [10, 11],
      'C': [11, 12, 13, 14] }
m
# modifying
m['H'] += [4, 5, 6, 7]
m
# adding
m['N'] = [13, 14, 15]
m
# replacing value
m['He'] = [13, 14]
m
# pretty printing
from pprint import pprint as pp
pp(m)

################################################################################
