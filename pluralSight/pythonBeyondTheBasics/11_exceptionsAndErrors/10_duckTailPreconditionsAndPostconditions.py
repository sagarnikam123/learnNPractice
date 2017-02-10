# 11_10-Duck Tail Preconditions and Postconditions

from wrapper import *

wrap(wealth_of_nations, 25)
print(_)

#AssertionError
wrap(wealth_of_nations, 25)

#AssertionError
wrap(wealth_of_nations, -25)

# ValueError: line_length -25 is not positive
wrap(wealth_of_nations, 25)

# AssertionError
wrap('The next train to Llanfairpwllgwyngyllogercychwyrndrobwllllantisiliogogogoch is at 16:32', 25)

# ValueError: line_length must be at least as long as the longest word
wrap('The next train to Llanfairpwllgwyngyllogercychwyrndrobwllllantisiliogogogoch is at 16:32', 25)
