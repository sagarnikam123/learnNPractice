# Re-Raising exceptions

################################################################################
# using 'raise' keyword to raise exception
from module.exceptional9 import string_log
string_log("25")
# ValueError: invalid literal for int() with base 10: 'cat'
string_log("cat")
# TypeError: int() argument must be a string, a bytes-like object or a number, not 'list'
string_log([5, 3, 1])

################################################################################
