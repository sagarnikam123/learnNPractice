# Ema's Supercomputer

#######################################################################################################################
#
#   Ema built a quantum computer! Help her test its capabilities by solving the problem below.
#   Given a grid of size N X M , each cell in the grid is either good or bad.
#
#   A valid plus is defined here as the crossing of two segments (horizontal and vertical) of equal lengths. These
#   lengths must be odd, and the middle cell of its horizontal segment must cross the middle cell of its
#   vertical segment. In the diagram below, the blue pluses are valid and the orange ones are not valid. [pluseses.png]
#   Find the 2 valid pluses that can be drawn on good cells in the grid, and print maximum the product of their areas.
#
#   Note: The two pluses cannot overlap, and the product of their areas should be maximum.
#
#   Input Format
#
#   The first line contains two space-separated integers N and M.
#   The N subsequent lines contains M characters, where each character is either G (good) or B (bad). If the yth
#   character in the xth line is G, then (x,y) is a cell good (otherwise it's a bad cell).
#
#   Constraints
#   2 <= N <= 15
#   2 <= M <= 15
#
#   Output Format
#   Find 2 pluses that can be drawn on good cells of the grid, and print maximum the product of
#   their areas as an integer.
#
#   Sample Input 0
#   5 6
#   GGGGGG
#   GBBBGB
#   GGGGGG
#   GGBBGB
#   GGGGGG
#
#   Sample Output 0
#   5
#
#   Sample Input 1
#   6 6
#   BGBBGB
#   GGGGGG
#   BGBBGB
#   GGGGGG
#   BGBBGB
#   BGBBGB
#
#   Sample Output 1
#   25
#
#   Explanation
#   Here are two possible solutions for Sample 1 (left) and Sample 2 (right): [plusss.png]
#   Explanation Key:
#       Green: good cell
#       Red: bad cell
#       Blue: possible pluses.
#   For the explanation below, we will refer to a plus of length i as Pi.
#
#   Sample 0
#   There is enough good space to color one P3 plus and one P1 plus. Area(P3)= 5 units, and Area(P1) = 1 unit.
#   The product of their areas is 5 * 1 = 5, so we print 5.
#
#   Sample 1
#   There is enough good space to color two P3 pluses. Area(P3) = 5 units. The product of the areas of our two
#   P3 pluses is 5*5 = 25, so we print 25.
#
#######################################################################################################################
