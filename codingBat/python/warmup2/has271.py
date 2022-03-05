#######################################################################################################################
#
#     has271
#
#     Given an array of ints, return true if it contains a 2, 7, 1 pattern -- a value, followed
#     by the value plus 5, followed by the value minus 1. Additionally the 271 counts even
#     if the "1" differs by 2 or less from the correct value.
#
#######################################################################################################################
#
#   has271({1, 2, 7, 1}) → true
#   has271({1, 2, 8, 1}) → false
#   has271({2, 7, 1}) → true
#   has271({3, 8, 2}) → true
#   has271({2, 7, 3}) → true
#   has271({2, 7, 4}) → false
#   has271({2, 7, -1}) → true
#   has271({2, 7, -2}) → false
#   has271({4, 5, 3, 8, 0}) → true
#   has271({2, 7, 5, 10, 4}) → true
#   has271({2, 7, -2, 4, 9, 3}) → true
#   has271({2, 7, 5, 10, 1}) → false
#   has271({2, 7, -2, 4, 10, 2}) → false
#
#######################################################################################################################
