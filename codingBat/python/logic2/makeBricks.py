#######################################################################################################################
#
#    makeBricks
#
#    We want to make a row of bricks that is goal inches long. We have a number of small bricks
#    (1 inch each) and big bricks (5 inches each). Return true if it is possible to make the goal
#    by choosing from the given bricks. This is a little harder than it looks and can be done without
#    any loops. See also: Introduction to MakeBricks
#
#######################################################################################################################
#
#   makeBricks(3, 1, 8) → true
#   makeBricks(3, 1, 9) → false
#   makeBricks(3, 2, 10) → true
#   makeBricks(3, 2, 8) → true
#   makeBricks(3, 2, 9) → false-
#   makeBricks(6, 1, 11) → true
#   makeBricks(6, 0, 11) → false
#   makeBricks(1, 4, 11) → true
#   makeBricks(0, 3, 10) → true
#   makeBricks(1, 4, 12) → false-
#   makeBricks(3, 1, 7) → true
#   makeBricks(1, 1, 7) → false
#   makeBricks(2, 1, 7) → true
#   makeBricks(7, 1, 11) → true
#   makeBricks(7, 1, 8) → true
#   makeBricks(7, 1, 13) → false
#   makeBricks(43, 1, 46) → true
#   makeBricks(40, 1, 46) → false
#   makeBricks(40, 2, 47) → true
#   makeBricks(40, 2, 50) → true
#   makeBricks(40, 2, 52) → false
#   makeBricks(22, 2, 33) → false
#   makeBricks(0, 2, 10) → true
#   makeBricks(1000000, 1000, 1000100) → true
#   makeBricks(2, 1000000, 100003) → false-
#   makeBricks(20, 0, 19) → true
#   makeBricks(20, 0, 21) → false
#   makeBricks(20, 4, 51) → false
#   makeBricks(20, 4, 39) → true
#   other tests-
#
#######################################################################################################################
