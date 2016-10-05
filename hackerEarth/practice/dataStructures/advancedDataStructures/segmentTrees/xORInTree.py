# XOR in Tree

#######################################################################################################################
#
#   In Graph theory, tree is a simple connected acyclic graph. You are given a tree consists of N nodes numbered
#   from 1 to N. Each node i have a value Ai associated with it. Your task is writing a program doing Q operations,
#   each operations is 1 of 2 following types:
#       u, v: Assign Au to v.
#       u, v: Calculate XOR sum of all value associated with nodes in unique single path from u to v.
#
#   Input
#   The first line is T - the number of test cases. Then T test cases follow.
#   Each test consists of several lines.
#       The first line contains a single integer N - the number of nodes in tree.
#       The second line contains N integers A1, A2, .., AN where Ai is value associated with node i.
#       Then N - 1 lines, each line contains two integer u and v (1 ≤ u, v ≤ N) denoting there is a direct edge
#           between node u and node v. It is guaranteed that these edges form a tree.
#       Then Q in a single line - the number of operations.
#       Q lines follow, each line contains 3 integer t, u, v in which t is 1 or 2 denoting type of this operation
#       described in the statement. If t = 1 then 1 ≤ u ≤ N, 1 ≤ v ≤ 109. If t = 2 then 1 ≤ u, v ≤ N.
#
#   Output
#   For each operations of type 2, print the answer in a single line.
#
#   Constraints
#   1 ≤ T ≤ 10
#   1 ≤ N ≤ 10^5
#   1 ≤ Ai ≤ 10^9
#   1 ≤ Q ≤ 10^5
#
#   SAMPLE INPUT
#   1
#   5
#   1 2 3 4 5
#   1 2
#   1 3
#   2 4
#   2 5
#   7
#   2 3 4
#   1 1 2
#   2 3 4
#   2 4 5
#   1 2 7
#   2 4 5
#   2 3 4
#
#   SAMPLE OUTPUT
#   4
#   7
#   3
#   6
#   2
#
#######################################################################################################################
