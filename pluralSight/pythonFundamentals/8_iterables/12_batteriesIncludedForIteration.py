# batteries included for Iteration

################################################################################
from itertools import islice, count

# NameError: name 'all_prime' is not defined
islice(all_prime, 1000)
thousand_primes = islice( (x for x in count() if is_prime(x)), 1000 )
thousand_primes
list(thousand_primes)

sum( islice( (x for x in count() if is_prime(x)), 1000 ) )

any( [False, False, True] )
all([False, False, True])
any( is_prime(x) for x in range(1328, 1361) )
all( name==name.title() for name in ['London', 'New York', 'Sydney']  )

sunday = [12, 14, 15, 15, 17, 21, 22, 22, 23, 22, 20, 18]
monday = [13, 14, 14, 14, 16, 20, 21, 22, 22, 21, 19, 17]
for item in zip(sunday, monday):
    print(item)

for sun, mon in zip(sunday, monday):
    print( 'average = ', (sun+mon)/2 )

for temps in zip(sunday, monday, tuesday):
    print('min={:4.1f}, max={:4.1f}, average={:4.1f}'.format(min(temps), max(temps), sum(temps)/len(temps) ))

from itertools import chain
temperatures = chain(sunday, monday, tuesday)
temperatures
list(temperatures)
all(t > 0 for t in temperatures)

for x in ( p for p in lucas() if is_prime(p) ):
    print(x)

################################################################################
