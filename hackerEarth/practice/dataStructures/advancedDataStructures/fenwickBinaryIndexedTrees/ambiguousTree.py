# Ambiguous Tree

#######################################################################################################################
#
#   For his birthday, Jeffrey received a tree with N vertices, numbered from 1 to N. Disappointed by the fact that
#   there is only one simple path between any two vertices, Jeffrey decided to remedy this by introducing an extra
#   edge in the tree. Note that this may result in a self loop or multiple edge. After introducing an extra edge,
#   Jeffrey wants to know how many pairs of two vertices are ambiguous. Two vertices are ambiguous if there exists
#   more than one simple path between them. Jeffrey has Q queries — he has decided Q possible locations
#   for the extra edge. Please help him find out how many ambiguous pairs there in the tree if he added each of
#   the Q edges to the tree. The tree will revert back to its original state after each query,
#   so queries are mutually independent.
#
#   Input:
#   The first line of input will contain N.
#   The next N - 1 lines of input will each contain a pair of integers a and b, indicating
#   that there is an edge from vertex a to b.
#   The next line of input will contain Q.
#   The next Q lines of input will each contain a pair of integers u and v, indicating that Jeffrey is considering
#   putting an extra edge between u and v.
#
#   Output:
#   Output Q lines, the answers to the queries in the same order as given in the input.
#
#   Constraints:
#   1  <=  N  <=  10^5
#   1  <=  Q  <=  10^5
#   1  <=  a, b  <=  N, a ≠ b
#   1  <=  u, v  <=  N
#   It is guaranteed that the given edges in the initial graph will form a tree.
#
#   Note:
#   A simple path is a sequence of vertices such that all the vertices in the sequence are unique and each adjacent
#   pair in the sequence are connected by an edge. Two simple paths are different if one vertex exists in one path
#   but not the other or one edge exists in one path but not the other.
#
#   SAMPLE INPUT
#   10
#   1 2
#   1 3
#   2 4
#   1 5
#   3 6
#   3 7
#   6 8
#   5 9
#   5 10
#   5
#   2 4
#   1 8
#   3 9
#   9 6
#   4 10
#
#   SAMPLE OUTPUT
#   9
#   29
#   35
#   39
#   34
#
#   Explanation
#   Here is the tree given in the test case:(diagram)
#
#######################################################################################################################
