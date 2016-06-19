# Filtering Predicates

################################################################################
from math import sqrt

def is_prime(x) :
    if x < 2 :
        return False
    for i in range(2, int(sqrt(x)) +1 ) :
        if x % i == 0 :
            return False
    return True

# [ expr(item) for item in iterable if predicate(item)]
# optional filtering clause
[ x for x in range(101) if is_prime(x)  ]

# numbers with only three divisions mapped to those divisors
prime_square_divisors = { x*x:(1, x, x*x) for x in range(101) if is_prime(x) }
pp(prime_square_divisors)

################################################################################
