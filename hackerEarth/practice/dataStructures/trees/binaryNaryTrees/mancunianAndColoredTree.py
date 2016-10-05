# Mancunian And Colored Tree

#######################################################################################################################
#
#   After a hectic week at work, Mancunian and Liverbird decide to go on a fun weekend camping trip. As they were
#   passing through a forest, they stumbled upon a unique tree of N nodes. Vertices are numbered from 1 to N.
#   Each node of the tree is assigned a color (out of C possible colors). Being bored, they decide to work together
#   (for a change) and test their reasoning skills. The tree is rooted at vertex 1. For each node, they want to find
#   its closest ancestor having the same color.
#
#   Input format
#   The first line contains two integers N
#   and C denoting the number of vertices in the tree and the number of possible colors.
#   The second line contains N−1 integers. The i th integer denotes the parent of the i+1 th vertex.
#   The third line contains N integers, denoting the colors of the vertices.
#   Each color lies between 1 and C inclusive.
#
#   Output format
#   Print N space-separated integers. The ith integer is the vertex number of lowest ancestor of the ith node which
#   has the same color. If there is no such ancestor, print −1 for that node.
#
#   Constraints
#   1 <= N <= 100,000
#   1 <= C <= 100,000
#
#   SAMPLE INPUT
#   5 4
#   1 1 3 3
#   1 4 2 1 2
#
#   SAMPLE OUTPUT
#   -1 -1 -1 1 3
#
#   Explanation
#   Vertices 1, 2 and 3 do not have any ancestors having the same color as them. The nearest required ancestors
#   for vertices 4 and 5 are vertices 1 and 3 respectively.
#
#######################################################################################################################
