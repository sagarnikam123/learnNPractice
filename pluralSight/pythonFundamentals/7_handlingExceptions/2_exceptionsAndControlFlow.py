# Exceptions and control flow

################################################################################
from module.exceptional1 import convert
convert("33")
convert(44)

# ValueError: invalid literal for int() with base 10: 'hedgehog'
convert("hedgehog")

# add try-except construct
from module.exceptional2 import convert
convert("34")
convert("giraffe")
# TypeError: int() argument must be a string, a bytes-like object or a number, not 'list'
convert( [4, 5, 6] )

# add handler for TypeError
from module.exceptional3 import convert
convert([1, 3, 19])

# collapsing both exception handler type to avoid code duplicacy
from module.exceptional4 import convert
convert("29")
convert("elephant")
convert( [4, 5, 1] )

################################################################################
