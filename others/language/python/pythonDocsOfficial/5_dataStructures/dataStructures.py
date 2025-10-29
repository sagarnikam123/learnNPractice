# 5. Data Structures

# 5.1. More on Lists
x = [1, 2, 3, 4]
x.append(5)
x[len(x):] = [6]

y = ['a', 'b', 'c']
x.extend(y)
x[len(x):] = y

x.insert(0, 10)
x.insert(len(x), 11)

x.remove(10)
x.remove(y)
x.remove(y[0])
x.remove(y[1])
x.remove(y[2])
# ValueError: list.remove(x): x not in list
x.remove('d')

x.pop(len(x)-1)
x.pop()
x.clear()

x.index(1)
# ValueError: 'z' is not in list
x.index('z')

x[len(x):] = x
x.count(4)

x.sort()
x.sort(reverse=True)

x.reverse()

x.copy()

fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
fruits.count('apple')
fruits.count('tangerine')
fruits.index('banana')
fruits.index('banana', 4)
fruits.reverse()
fruits
fruits.append('grape')
fruits.sort()
fruits.pop()

# 5.1.1. Using Lists as Stacks
stack = [3, 4, 5]
stack
stack.append(6)
stack.append(7)
stack.pop()
stack.pop()
stack.pop()
stack

# 5.1.2. Using Lists as Queues
from collections import deque
queue = deque(['Eric', 'John', 'Michael'])
queue.append('Terry')
queue.append('Graham')
queue.popleft()
queue.popleft()
queue

# 5.1.3. List Comprehensions
squares = []
for x in range(10):
    squares.append(x**2)
squares
squares = list(map(lambda x: x**2, range(10)))
squares
squares = [x**2 for x in range(10)]
squares

[(x, y) for x in [1,2,3] for y in [3, 1, 4] if x != y]
combs = []
for x in [1, 2, 3]:
    for y in [3, 1, 4]:
        if x != y :
            combs.append((x,y))

combs

vec  = [-4, -2, 0, 2, 4]
# create anew list with the values doubled
[x*2 for x in vec ]
# filter the list to exclude negative numbers
[x for x in vec if x >= 0]
# apply a function to all the elements
[abs(x) for x in vec]
# call a method on each element
freshfruit = [' banana', '  loganberry  ', 'passion fruit ']
[weapon.strip() for weapon in freshfruit]
# create a list of 2-tuples like (number, square)
[(x, x**2) for x in range(6)]
# the tuple must be parenthesized, otherwise an error is raised
# SyntaxError: invalid syntax
[x, x**2 for x in range(6)]
# flatten a list using listcomp with two 'for'
vec = [[1,2,3], [4,5,6], [7,8,9]]
[num for elem in vec for num in elem]

from math import pi
[str(round(pi, i)) for i in range(1, 6)]

# 5.1.4. Nested List Comprehensions

matrix = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12],
]
[ [row[i] for row in matrix] for i in range(4)]

transposed = []
for i in range(4):
    transposed.append([row[i] for row in matrix])

for i in range(4):
    # the following 3 lines implement the nested listcomp
    transposed_row = []
    for row in matrix:
        transposed_row.append(row[i])
    transposed.append(transposed_row)

list(zip(*matrix))

# 5.2. The del statement
a = [-1, 1, 66.25, 333, 333, 1234.5]
del a[0]
del a[2:4]
del a[:]

# 5.3. Tuples and Sequences
t = 12345, 54321, 'hello!'
t[0]
# tuples are immutable:
# TypeError: 'tuple' object does not support item assignment
t[0] = 88888
# but they can contain mutable objects:
v = ([1,2,3], [3,2,1])

empty = ()
singleton = 'hello',
type(singleton)
len(empty)
len(singleton)
singleton
# sequence unpacking
x, y, z = t

# 5.4. Sets
basket = {'apple', 'orange', 'apple', 'pear', 'orange', 'banana'}
basket
print(basket)
'orange' in basket #fast membership testing
'crabgrass' in basket
# Demonstrate set operations on unique letters from two words.
a = set('abracadabra')
b = set('alacazam')
a # unique letters in a
a - b   # letters in a but not in b
a | b   # letters in a or b or both
a & b   # letters in both a and b
a ^ b   # letters in a or b but not both

# set comprehensions
a = {x for x in 'abracadabra' if x not in 'abc'}
a

# 5.5. Dictionaries
# associative memories/ associative arrays
tel = { 'jack' : 4098, 'sape': 4139 }
tel['guido'] = 4127
tel
tel['jack']
# KeyError: 'hilton'
tel['hilton']
del tel['sape']
tel['irv'] = 4127
tel
list(tel)
sorted(tel)
'guido' in tel
'jack' not in tel

dict( [ ('sape', 4139), ('guido', 4127), ('jack', 4098)  ] )
{x: x**2 for x in (2, 4, 6)}
dict(sape=4139, guido=4127, jack=4098)

# 5.6. Looping Techniques
knights = {'gallahad': 'the pure', 'robin': 'the brave'}
for k, v in knights.items():
    print(k, v)

for i, v in enumerate(['tic', 'tac', 'toe']):
    print(i, v)

questions = ['name', 'quest', 'favorite color']
answers = ['lancelot', 'the holy grail', 'blue']
for q, a in zip(questions, answers):
    print('What is your {0}? It is {1}.'.format(q, a))

for i in reversed(range(1, 10, 2)):
    print(i)

basket = ['apple', 'orange', 'apple', 'pear', 'orange', 'banana']
for f in sorted(set(basket)):
    print(f)


import math
raw_data = [56.2, float('NaN'), 51.7, 55.3, 52.5, float('NaN'), 47.8 ]
filtered_date = []
for value in raw_data:
    if not math.isnan(value):
        filtered_date.append(value)

filtered_date

string1, string2, string3 = '', 'Trondheim', 'Hammer Dance'
non_null = string1 or string2 or string3
non_null

# 5.8. Comparing Sequences and Other Types
(1, 2, 3) < (1, 2, 4)
(1, 2, 5) < (1, 2, 4)
[1, 2, 3] < [1, 2, 4]
'ABc' < 'C' , 'Pascal' < 'Python'
p = 'ABc' < 'C' , 'Pascal' < 'Python'
p
type(p)
(1, 2, 3, 4) < (1, 2, 4)
(1, 2) < (1, 2, -1)
(1, 2, 3) == (1.0, 2.0, 3.0)
(1, 2, ('aa', 'ab'))   < (1, 2, ('abc', 'a'), 4)
