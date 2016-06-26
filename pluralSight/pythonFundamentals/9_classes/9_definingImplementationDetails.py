# defining implementation details

################################################################################
from airtravel9 import make_flight
f = make_flight()
f
f.relocate_passenger('12A', '15D')

from pprint import pprint as pp
pp(f._seating)

from airtravel10 import make_flight
f = make_flight()
f.num_available_seats()
6 * 22 -5

################################################################################
