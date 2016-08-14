###################################################################################################
#
#   bigHeights
#
#   (A variation on the sumHeights problem.) We have an array of heights, representing the altitude
#   along a walking trail. Given start/end indexes into the array, return the number of "big" steps
#   for a walk starting at the start index and ending at the end index. We'll say that step is big
#   if it is 5 or more up or down. The start end end index will both be valid indexes
#   into the array with start <= end.
#
###################################################################################################
#
#   bigHeights({5, 3, 6, 7, 2}, 2, 4) → 1
#   bigHeights({5, 3, 6, 7, 2}, 0, 1) → 0
#   bigHeights({5, 3, 6, 7, 2}, 0, 4) → 1
#   bigHeights({5, 3, 6, 7, 3}, 0, 4) → 0
#   bigHeights({5, 3, 6, 7, 2}, 1, 1) → 0
#   bigHeights({5, 13, 6, 7, 2}, 1, 2) → 1
#   bigHeights({5, 13, 6, 7, 2}, 0, 2) → 2
#   bigHeights({5, 13, 6, 7, 2}, 1, 4) → 2
#   bigHeights({5, 13, 6, 7, 2}, 0, 4) → 3
#   bigHeights({5, 13, 6, 7, 2}, 0, 3) → 2
#   bigHeights({1, 2, 3, 4, 5, 4, 3, 2, 10}, 0, 3) → 0
#   bigHeights({1, 2, 3, 4, 5, 4, 3, 2, 10}, 4, 8) → 1
#   bigHeights({1, 2, 3, 14, 5, 4, 3, 2, 10}, 0, 3) → 1
#   bigHeights({1, 2, 3, 14, 5, 4, 3, 2, 10}, 7, 8) → 1
#   bigHeights({1, 2, 3, 14, 5, 4, 3, 2, 10}, 3, 8) → 2
#   bigHeights({1, 2, 3, 14, 5, 4, 3, 2, 10}, 2, 8) → 3
#
###################################################################################################
