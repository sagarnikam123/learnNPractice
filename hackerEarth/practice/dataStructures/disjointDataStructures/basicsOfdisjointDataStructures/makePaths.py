# Make Paths

#######################################################################################################################
#
#   Walter White and Jesse Pinkman have now established their bases at different places.
#   Now they want to form a network, that is, they want that all their bases should be reachable from every base.
#   One base is reachable from other base if there is a path of tunnels connecting bases.
#   Bases are suppose based on a 2-D plane having integer coordinates.
#   Cost of building tunnels between two bases are coordinates (x1,y1) and (x2,y2) is min{ |x1-x2|, |y1-y2| }.
#
#   What is the minimum cost such that a network is formed.
#
#   Input:
#   First line contains N, the number of bases.
#   Each of the next N lines contain two integers xi and yi.
#
#   Output:
#   Print the minimum cost of building the network.
#
#   Constraints:
#   1  <=  N  <=  100000
#   -10^9  <=  xi,yi  <=  10^9
#
#   SAMPLE INPUT
#   2
#   1 5
#   7 8
#
#   SAMPLE OUTPUT
#   3
#
#######################################################################################################################
