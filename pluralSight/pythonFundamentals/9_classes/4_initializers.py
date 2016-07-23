# initializers

################################################################################
# __init__()
# instance method for initializing new objects
from airtravel4 import Flight
f = Flight("SN060")
f
# ValueError: No airline code in '060'
f = Flight("060")
# ValueError: Invalid airline code 'sn060'
f = Flight("sn060")
# ValueError: Invalid route number 'SNabcd'
f = Flight("SNabcd")
# ValueError: Invalid route number 'SN12345'
f = Flight("SN12345")

################################################################################
