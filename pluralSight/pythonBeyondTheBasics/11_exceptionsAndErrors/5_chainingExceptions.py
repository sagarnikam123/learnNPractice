# 11_05-Chaining Exceptions

from chaining import *

inclination(3, 5)
# ZeroDivisionError: division by zero
inclination(0, 5)

try:
    inclination(0, 5)
except InclinationError as e:
    print(e)
    print(e.__cause__)
