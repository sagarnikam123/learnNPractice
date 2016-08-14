#######################################################################################################################
#
#    makeLast
#
#    Given an int array, return a new array with double the length where its last element is the
#    same as the original array, and all the other elements are 0. The original array will be
#    length 1 or more. Note: by default, a new int array contains all 0's.
#
#######################################################################################################################
#
#   makeLast({4, 5, 6}) → {0, 0, 0, 0, 0, 6}
#   makeLast({1, 2}) → {0, 0, 0, 2}
#   makeLast({3}) → {0, 3}
#   makeLast({0}) → {0, 0}
#   makeLast({7, 7, 7}) → {0, 0, 0, 0, 0, 7}
#   makeLast({3, 1, 4}) → {0, 0, 0, 0, 0, 4}
#   makeLast({1, 2, 3, 4}) → {0, 0, 0, 0, 0, 0, 0, 4}
#   makeLast({1, 2, 3, 0}) → {0, 0, 0, 0, 0, 0, 0, 0}
#   makeLast({2, 4}) → {0, 0, 0, 4}
#
#######################################################################################################################
