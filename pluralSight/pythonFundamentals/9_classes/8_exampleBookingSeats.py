# example booking eats

################################################################################
from airtravel7 import *
f = Flight( 'BA758', Aircraft('G-EUPT', 'Airbus A319', num_rows=22, num_seats_per_row=6) )
f._seating
from pprint import pprint as pp
pp(f._seating)


from airtravel8 import *
f = Flight('BA758', Aircraft('G-EUPT', 'Airbus A319', num_rows=22, num_seats_per_row=6) )
# TypeError: allocate_seat() takes 2 positional arguments but 3 were given
f.allocate_seat('12A', 'Guido van Rossum')
# Adding 'self' argument in allocate_seat()

from airtravel8 import *
from pprint import pprint as pp
f = Flight('BA758', Aircraft('G-EUPT', 'Airbus A319', num_rows=22, num_seats_per_row=6) )
f.allocate_seat('12A', 'Guido van Rossum')
# ValueError: Seat 12A already occupied
f.allocate_seat('12A', 'Rasmus Lerdorf')

f.allocate_seat('15F', 'Bjarne Stroustrup')
f.allocate_seat('15E', 'Anders Hejlsberg')
# ValueError: Invalid seat letter 7
f.allocate_seat('E27', 'Yukihiro Matsumoto')

f.allocate_seat('1C', 'John McCarthy')
f.allocate_seat('1D', 'Richard Hickey')
# ValueError: INvalid seat row D
f.allocate_seat('DD', 'Larry Wall')

pp(f._seating)

################################################################################
