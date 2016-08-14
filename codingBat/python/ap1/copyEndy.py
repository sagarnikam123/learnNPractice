#######################################################################################################################
#
#    copyEndy
#
#    We'll say that a positive int n is "endy" if it is in the range 0..10 or 90..100 (inclusive).
#    Given an array of positive ints, return a new array of length "count" containing the first
#    endy numbers from the original array. Decompose out a separate isEndy(int n) method to test
#    if a number is endy. The original array will contain at least "count" endy numbers.
#
#######################################################################################################################
#
#   copyEndy({9, 11, 90, 22, 6}, 2) → {9, 90}
#   copyEndy({9, 11, 90, 22, 6}, 3) → {9, 90, 6}
#   copyEndy({12, 1, 1, 13, 0, 20}, 2) → {1, 1}
#   copyEndy({12, 1, 1, 13, 0, 20}, 3) → {1, 1, 0}
#   copyEndy({0}, 1) → {0}
#   copyEndy({10, 11, 90}, 2) → {10, 90}
#   copyEndy({90, 22, 100}, 2) → {90, 100}
#   copyEndy({12, 11, 10, 89, 101, 4}, 1) → {10}
#   copyEndy({13, 2, 2, 0}, 2) → {2, 2}
#   copyEndy({13, 2, 2, 0}, 3) → {2, 2, 0}
#   copyEndy({13, 2, 13, 2, 0, 30}, 2) → {2, 2}
#   copyEndy({13, 2, 13, 2, 0, 30}, 3) → {2, 2, 0}
#
#######################################################################################################################
