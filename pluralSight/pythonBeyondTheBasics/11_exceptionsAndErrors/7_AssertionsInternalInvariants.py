# 11_07-Assertions Internal Invariants

# AssertionError: The condition was false
assert False, 'The condition was false'

assert True, 'The condition was false'
assert 5 > 2, 'You are in a defective universe!'

from internal import *

modulus_four(4)
# AssertionError: Remainder is not 2
modulus_four(3)
modulus_three(3)

from internal import *
modulus_four(3)
modulus_four(4)
modulus_three(4)
