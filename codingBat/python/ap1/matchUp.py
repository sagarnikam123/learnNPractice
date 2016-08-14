#######################################################################################################################
#
#    matchUp
#
#    Given 2 arrays that are the same length containing strings, compare the 1st string in one array
#    to the 1st string in the other array, the 2nd to the 2nd and so on. Count the number of times
#    that the 2 strings are non-empty and start with the same char.
#    The strings may be any length, including 0.
#
#######################################################################################################################
#
#   matchUp({"aa", "bb", "cc"}, {"aaa", "xx", "bb"}) → 1
#   matchUp({"aa", "bb", "cc"}, {"aaa", "b", "bb"}) → 2
#   matchUp({"aa", "bb", "cc"}, {"", "", "ccc"}) → 1
#   matchUp({"", "", "ccc"}, {"aa", "bb", "cc"}) → 1
#   matchUp({"", "", ""}, {"", "bb", "cc"}) → 0
#   matchUp({"aa", "bb", "cc"}, {"", "", ""}) → 0
#   matchUp({"aa", "", "ccc"}, {"", "bb", "cc"}) → 1
#   matchUp({"x", "y", "z"}, {"y", "z", "x"}) → 0
#   matchUp({"", "y", "z"}, {"", "y", "x"}) → 1
#   matchUp({"x", "y", "z"}, {"xx", "yyy", "zzz"}) → 3
#   matchUp({"x", "y", "z"}, {"xx", "yyy", ""}) → 2
#   matchUp({"b", "x", "y", "z"}, {"a", "xx", "yyy", "zzz"}) → 3
#   matchUp({"aaa", "bb", "c"}, {"aaa", "xx", "bb"}) → 1
#
#######################################################################################################################
