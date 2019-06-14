# 3.1. Using Python as a Calculator

# this is the first comment
spam = 1 # and this is the second comment
        # ... and now a third
text = "# This is not a comment because it's inside quotes."

...
# Ellipsis
Ellipsis

# This object is used by extended slice notation (see the Python Reference Manual).
# It is another singleton constant similar to None, but without a particular intended use.
# It supports no special operations. There is exactly one ellipsis object, named Ellipsis (a built-in name)

def will_do_something():
 1
will_do_something()

def will_do_something():
 ...
def will_do_something():

x = [1,2,3]
x.append(...)
x.append(None)

# 3.1.1. Numbers
2 + 2
50 - 5*6
(50 - 5*6) /4
8/5

# Division (/) always returns a float.
#  floor division and get an integer result (discarding any fractional result)
17 / 3
17 // 3
17 % 3
5 * 3 + 2

# ** operator to calculate powers
5 ** 2
2 ** 7
(5 ** 2) ** 2

# equal sign (=) is used to assign a value to a variable.
width = 20
height = 5 * 9
width * height

# NameError: name 'n' is not defined
n # try to access an undefined variable

# support for floating point
4 * 3.75 - 1

# In interactive mode, the last printed expression is assigned to the variable.
# This variable should be treated as read-only by the user.
# Don’t explicitly assign a value to it — you would create an independent local variable
# with the same name masking the built-in variable with its magic behavior.
tax = 12.5 / 100
price = 100.50
price * tax
price + _
_
round(_, 2)

# removing magic behavior of _
_ # check value
_ = 100
_ # value should be 100
500 # printing, to get this value inside _
_ # Notice it's not 500, but 100

# 3.1.2. Strings

'spam eggs' # single quotes
'doesn\'t'  # use \' to escapte the single quote
"doesn't"  # or use double quotes instead
'"Yes," they said.'
"\"Yes,\" they said."
'"Isn\'t," they said.'

'"Isn\'t," they said.'
print('"Isn\'t," they said.')
s = 'First line.\nSecond line.'     # \n means newline
s # without print(), \n is included in the output
print(s)    # with print(), \n produces a new line

# using raw strings
# which means all escape codes will be ignored.
print('C:\some\name')   # here \n means newline
print(r'C:\some\name')  # note the r before the quote
print(R'C:\some\name')

# String literals can span multiple lines. One way is using triple-quotes: """...""" or '''...'''.
print("""\
Usage: thingy [OPTIONS]
    -h              Display this usage message
    -H hostname     Hostname to connect to
""")    # note that the initial newline is not included

# Strings can be concatenated (glued together) with the + operator, and repeated with *
# e times 'un', followed by 'ium'
3 * 'un' + 'ium'

# Two or more string literals (i.e. the ones enclosed between quotes) next to each other are automatically concatenated.
'Py' 'thon'
text = ('Put several strings withing parenthese '
        'to have them joined together.')
text

# only works with two literals though, not with variables or expressions:
prfix = 'Py'
# SyntaxError: invalid syntax
prefix 'thon'  # can't concatenate a variable and a string literal
# SyntaxError: invalid syntax
('un' * 3) 'ium'
prfix + 'thon'

# Strings can be indexed (subscripted), with the first character having index 0.
word = 'Python'
word[0]     # character in position 0
word[5]

# Indices may also be negative numbers, to start counting from the right:
word[-1]
word[-2]
word[-6]

# slicing
word[0:2]   # characters from position 0 (included) to 2 (excluded)
word[2:5]   # characters from position 2 (included) to 5 (excluded)
word[:2] + word[2:]
word[:4] + word[4:]
word[:2]    # characters from the beginning to position 2 (excluded)
word[4:]    # characters from position 4 (included) to the end
word[-2:]   # characters from the second-last (included) to the end
# IndexError: string index out of range
word[42]
word[2:42]
word[42:]

# Python strings cannot be changed — they are immutable.
# TypeError: 'str' object does not support item assignment
word[0] = 'J'
word[2:] = 'py'

'J' + word[1:]
word[:2] + 'py'

s = 'supercalifragilisticexpialidocious'
len(s)

# 3.1.3. Lists
# compound data types, used to group together other values.
# might contain items of different types, but usually the items all have the same type.
squares = [1, 4, 9, 16, 25]
squares
squares[0]  # indexing returns the item
squares[-1]
squares[-3:]    # slicing returns a new list
squares[:]
# All slice operations return a new (shallow) copy of the list containing the requested elements
squares + [36, 49, 64, 81, 100]
# lists are a mutable type, i.e. it is possible to change their content:
cubes = [1, 8, 27, 65, 125] # something's wrong here
4 ** 3  # the cube of 4 is 64, not 65
cubes[3] = 64   # replace the wrong value
cubes
cubes.append(216)   # add the cube of 6
cubes.append(7 ** 3)    # add the cube of 7
cubes

letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
letters
# replace some values
letters[2:5] = ['C', 'D', 'E']
letters
# now remove them
letters[2:5] = []
letters
# clear the list by replacing all the elements with an empty list
letters[:] = []
letters

letters = ['a', 'b', 'c', 'd']
len(letters)

# nest lists (create lists containing other lists)
a = ['a', 'b', 'c']
n = [1, 2, 3]
x = [a, n]
x
x[0]
x[0][1]
