#######################################################################################################################
#
#    makeChocolate
#
#    We want make a package of goal kilos of chocolate. We have small bars (1 kilo each) and big bars
#    (5 kilos each). Return the number of small bars to use, assuming we always use big bars before
#    small bars. Return -1 if it can't be done.
#
#######################################################################################################################
#
#   makeChocolate(4, 1, 9) → 4
#   makeChocolate(4, 1, 10) → -1
#   makeChocolate(4, 1, 7) → 2
#   makeChocolate(6, 2, 7) → 2
#   makeChocolate(4, 1, 5) → 0
#   makeChocolate(4, 1, 4) → 4
#   makeChocolate(5, 4, 9) → 4
#   makeChocolate(9, 3, 18) → 3
#   makeChocolate(3, 1, 9) → -1
#   makeChocolate(1, 2, 7) → -1
#   makeChocolate(1, 2, 6) → 1
#   makeChocolate(1, 2, 5) → 0
#   makeChocolate(6, 1, 10) → 5
#   makeChocolate(6, 1, 11) → 6
#   makeChocolate(6, 1, 12) → -1
#   makeChocolate(6, 1, 13) → -1
#   makeChocolate(6, 2, 10) → 0
#   makeChocolate(6, 2, 11) → 1
#   makeChocolate(6, 2, 12) → 2
#   makeChocolate(60, 100, 550) → 50
#   makeChocolate(1000, 1000000, 5000006) → 6
#   makeChocolate(7, 1, 12) → 7
#   makeChocolate(7, 1, 13) → -1
#   makeChocolate(7, 2, 13) → 3
#
#######################################################################################################################
