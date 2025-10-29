# Exceptions, APIs and Protocols

################################################################################
# few exception types
# IndexError # integer index is out of range
# KeyError # look-up in a mapping fails
# ValueError # object is of the right type, but contains an inappropriate value.
# TypeError

z = [1, 4, 2]
# IndexError: list index out of range
z[4]

# ValueError: invalid literal for int() with base 10: 'jim'
int('jim')

codes = dict(gb=44, us=1, no=47, fr=33, es=34)
# KeyError: 'de'
codes['de']

################################################################################
