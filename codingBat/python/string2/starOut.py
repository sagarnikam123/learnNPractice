#######################################################################################################################
#
#    starOut
#
#    Return a version of the given string, where for every star (*) in the string the star and
#    the chars immediately to its left and right are gone.
#    So "ab*cd" yields "ad" and "ab**cd" also yields "ad".
#
#######################################################################################################################
#
#   starOut("ab*cd") → "ad"
#   starOut("ab**cd") → "ad"
#   starOut("sm*eilly") → "silly"
#   starOut("sm*eil*ly") → "siy"
#   starOut("sm**eil*ly") → "siy"
#   starOut("sm***eil*ly") → "siy"
#   starOut("stringy*") → "string"
#   starOut("*stringy") → "tringy"
#   starOut("*str*in*gy") → "ty"
#   starOut("abc") → "abc"
#   starOut("a*bc") → "c"
#   starOut("ab") → "ab"
#   starOut("a*b") → ""
#   starOut("a") → "a"
#   starOut("a*") → ""
#   starOut("*a") → ""
#   starOut("*") → ""
#   starOut("") → ""
#
#######################################################################################################################
