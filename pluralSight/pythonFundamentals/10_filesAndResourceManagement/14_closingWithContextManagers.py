# closing with context managers

################################################################################
from fridge1 import raid
raid('bacon')

# RuntimeError: Health warning
raid('deep fried pizza')

from fridge2 import raid
raid('spam')

from fridge3 import raid
raid('deep fried pizza')

################################################################################
