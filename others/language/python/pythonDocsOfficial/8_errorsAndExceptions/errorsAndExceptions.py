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
