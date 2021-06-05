# 24_Sets and Frozen Sets

basket = {'orange', 'apple', 'mango', 'apple', 'orange'}
type(basket)
basket

a = set()
a.add(1)
a.add(2)
a
a = {}
type(a)
a = {'something'}
type(a)
# TypeError: 'set' object does not support indexing
basket[0]


numbers = [1, 2, 3, 4, 2, 3, 4]
unique_numbers = set(numbers)
unique_numbers
unique_numbers.add(5)
unique_numbers

fs = frozenset(numbers)
fs
# AttributeError: 'frozenset' object has no attribute 'add'
fs.add(5)

x = {'a', 'b', 'c'}
'a' in x
'g' in x

for i in x:
    print(i)

x
y = {'a', 'g', 'h'}
y
x | y
x & y
x - y
x < y
x > y

x = {'h', 'g'}
y
x < y
