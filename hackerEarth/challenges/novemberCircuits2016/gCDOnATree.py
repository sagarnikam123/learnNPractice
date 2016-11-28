# GCD on a tree

#######################################################################################################################
#
#   You are given a tree with n nodes. The nodes are numbered from 1 to n. Let us define the gcd of a path as
#   the greatest common divisor of all values of the nodes in the path. Let F(g) denote the number of simple
#   paths on the tree whose gcd is g. Formally, F(g) equals the number of sequences p1,p2,⋯,pk, such that pi and
#   pi+1 are connected by an edge for all i<k, and pi≠pj for i≠j, and gcd(p1,p2,⋯pk)=g.
#   Find the values of F(g) for all 1 <= g <= n
#
#   Input
#   The first line contains n, the number of nodes in the tree.
#   Each of the next n−1 lines contain 2 integers u,v, denoting node u, and node v are connected by an edge.
#
#   Output
#   Print a single line containing n integers. The ith integer equals F(i).
#
#   Constraints
#   1 <= n <= 10^6
#
#   SAMPLE INPUT
#   4
#   1 2
#   2 3
#   2 4
#
#   SAMPLE OUTPUT
#   11 3 1 1
#
#   Explanation
#   The path from 2 to 4, and the path from 4 to 2, has gcd value 2. All other paths
#   with more than 1 nodes have gcd 1. The path i to i has gcd i
#
#######################################################################################################################
