# Disjoint Set Union

#######################################################################################################################
#
#   You are given number of nodes, N, and number of edges, M, of a undirected connected graph.
#   After adding each edge, print the size of all the connected components (in increasing order).
#
#   Input:
#   First line contains two integers, N and M, number of nodes and number of edges.
#   Next M lines contains two integers each, X and Y, denoting that there is an edge between X and Y.
#
#   Output:
#   For each edge, print the size of all the connected components (in increasing order) after adding that edge.
#
#   Constraints:
#   1 <= N <= 10^3
#   1 <= M <= N−1
#   1 <= X,Y <= N
#
#   SAMPLE INPUT
#   5 4
#   1 2
#   3 4
#   4 5
#   1 3
#
#   SAMPLE OUTPUT
#   1 1 1 2
#   1 2 2
#   2 3
#   5
#
#######################################################################################################################
