# 7. Input and Output

# 7.1. Fancier Output Formatting
year = 2016
event = 'Referendum'
f'Results of the {year} {event}'

yes_votes = 42_572_654
no_votes = 43_132_495
percentage = yes_votes / (yes_votes + no_votes)
percentage
'{:-9} YES votes {:2.2%}'.format(yes_votes, percentage)

repr(percentage)
str(percentage)
repr(type(yes_votes))

s = 'Hello, world.'
str(s)
repr(s)
str(1/7)
x = 10 * 3.25
y = 200 * 200
x
y
s = 'The value of x is ' + repr(x) + ', and y is ' + repr(y) + '...'
print(s)
# The repr() of a string adds string quotes and backslashes:
hello = 'hello, world\n'
hello
hellos = repr(hello)
hellos
print(hellos)
# The argument to repr() may be any Python object:
repr((x, y, ('spam', 'eggs')))

# 7.1.1. Formatted String Literals
import math
print(f'The value of pi is approximately {math.pi:.3f}')

>>> table = { 'Sjoerd': 4127, 'Jack':4098, 'Dcab':7678  }
>>> for name, phone in table.items():
...  print(f'{name:10} ==> {phone:10d}')
...
Sjoerd     ==>       4127
Jack       ==>       4098
Dcab       ==>       7678

animals = 'eels'
print(f'My hovercraft is full of {animals}.')
print(f'My hovercraft is full of {animals!r}.')

# 7.1.2. The String format() Method
print('We are the {} who say "{}!"'.format('knights', 'Ni'))
print('{0} and {1}'.format('spam', 'eggs'))
print('{1} and {0}'.format('spam', 'eggs'))
print('This {food} is {adjective}.'.format(food='spam', adjective='absolutely horrible'))
print('The story of {0}, {1}, and {other}.'.format('Bill', 'Manfred', other='Georg'))

table = {'Sjoerd': 4127, 'Jack': 4098, 'Dcab': 8637678}
print('Jack: {0[Jack]:d}; Sjoerd: {0[Sjoerd]:d}; Dcab: {0[Dcab]:d}'.format(table) )
print('Jack: {Jack:d}; Sjoerd: {Sjoerd:d}; Dcab: {Dcab:d}'.format(**table))

for x in range(1, 11):
    print('{0:2d} {1:3d} {2:4d}'.format(x, x*x, x*x*x))

# 7.1.3. Manual String Formatting
for x in range(1, 11):
    print(repr(x).rjust(2), repr(x*x).rjust(3), end=' ')
    # Note use of 'end' on previous line
    print(repr(x*x*x).rjust(4))

'12'.zfill(5)
'-3.14'.zfill(7)
'3.14159265359'.zfill(5)

# 7.1.4. Old string formatting
import math
print('The value of pi is approximately %5.3f.' % math.pi)

# 7.2. Reading and Writing Files
with open('workfile') as f:
    read_date = f.read()

f.closed

f.close()
# ValueError: I/O operation on closed file.
f.read()

# 7.2.1. Methods of File Objects
f = open('workfile')
f.readline()
f.readline()

f = open('workfile', 'r+')
for line in f:
    print(line, end='')

f.write('This is a test\n')

value = ('the answer', 42)
s = str(value)
# TypeError: write() argument must be str, not tuple
f.write(value)
f.write(s)
f.tell()

f = open('workfile', 'rb+')
f.write(b'0123456789abcdef')
f.seek(5)   # Go to the 6the byte in the file
f.read(1)
f.seek(-3, 2)       # Go to the 3rd byte before the end

# 7.2.2. Saving structured data with json
import json
json.dumps([1, 'simple', 'list'])

x = ['patliPutra', 123, 9.456]
f = open('workfile2', 'w+')
json.dump(x,f)
f.close()

f = open('workfile2', 'r+')
z = json.load(f)
z
