# 8. Errors and Exceptions

# 8.1. Syntax Errors
# parsing errors

# SyntaxError: invalid syntax
while True print('Hello world')

# 8.2. Exceptions
# ZeroDivisionError: division by zero
10 * (1/0)
# NameError: name 'spam' is not defined
4 + spam*3
# TypeError: must be str, not int
'2' + 2

# 8.3. Handling Exceptions
>>> while True:
try:
    x = int(input('Please enter a number: '))
    break
except ValueError:
    print('Oops! That was no valid number. Try again...')

try:
    pappi/0
except (RuntimeError, TypeError, NameError):
    raise

class B(Exception):
    pass

class C(B):
    pass

class D(C):
    pass

for cls in [B, C, D]:
    try:
        raise cls()
    except D:
        print('D')
    except C:
        print('C')
    except B:
        print('B')

for cls in [B, C, D]:
    try:
        raise cls()
    except B:
        print('B')
    except C:
        print('C')
    except D:
        print('D')

import sys
try:
    f = open('myfile.txt')
    s = f.readline()
    i = int(s.strip())
except OSError as err:
    print('OS error: {0}'.format(err))
except ValueError:
    print('Could not convert data to an integer.')
except:
    print('Unexcepted error:', sys.exc_info()[0])
    raise

import sys
for arg in sys.argv[1:]:
    try:
        f = open(arg, 'r')
    except OSError:
        print('cannot open', arg)
    else:
        print(arg, 'has', len(f.readlines()), 'lines')

try:
    raise Exception('spam', 'eggs')
except Exception as inst:
    print(type(inst))   # the exception instance
    print(inst.args)    # arguments stored in .args
    print(inst) # __str__ allows args to be printed directly,
                # but may be overridden in exception subclasses
    x, y = inst.args    # unpack args
    print('x =', x)
    print('y =', y)

def this_failes():
    x = 1/0

try:
    this_failes()
except ZeroDivisionError as err:
    print('Handling run-time error:', err)

# 8.4. Raising Exceptions
raise NameError('HiThere')
raise ValueError

try:
    raise NameError('HiThere')
except NameError:
    print('An exception flew by!')
    raise

# 8.5. User-defined Exceptions
class Error(Exception):
    """ Base class for exceptions in this module."""
    pass

class InputError(Error):
    """ Exception raised for errors in the input.

    Attributes:
        expression -- input expression in which the error occurred
        message -- explanation of error
    """
    def __init__(self, expression, message):
        self.expression = expression
        self.message = message

class TrasitionError(Error):
    """Raised when an operation attempts a state transition that's not allowed

    Attributes:
        previous -- state at beginning of transition
        next -- attempted new state
        message -- explanation of why the specific transition is not allowed
    """
    def __init__(self, previous, next, message):
        self.previous = previous
        self.next = next
        self.message = message

# 8.6. Defining Clean-up Actions
try:
    raise KeyboardInterrupt
finally:
    print('Goodbye, world!')

def divide(x, y):
    try:
        result = x / y
    except ZeroDivisionError:
        print('division by zero!')
    else:
        print('result is', result)
    finally:
        print('executing finally clause')

divide(2, 1)
divide(2, 0)
divide('2', '1')

for line in open('myfile.txt'):
    print(line, end='')

with open('myfile.txt') as f:
    for line in f:
        print(line, end='')
