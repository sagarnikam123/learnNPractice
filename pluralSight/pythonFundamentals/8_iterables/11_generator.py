# generator comprehensions

################################################################################
million_squares = ( x*x for x in range(1, 1000001 ))
million_squares
list(million_squares)
# empty list
list(million_squares)

sum( x*x for x in range(1, 10000001) )

from math import sqrt
def is_prime(x) :
    if x < 2 :
        return False
    for i in range(2, int(sqrt(x)) +1 ) :
        if x % i == 0 :
            return False
    return True
    
sum( x for x in range(1001) if is_prime(x) )

################################################################################
