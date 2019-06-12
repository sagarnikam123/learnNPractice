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
