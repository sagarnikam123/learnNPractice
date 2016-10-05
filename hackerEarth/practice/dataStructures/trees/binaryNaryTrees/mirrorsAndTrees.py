# Mirrors and Trees

#######################################################################################################################
#
#   Given a binary tree in a two dimensional plane which has both side covered by mirrors. As this is a 2D
#   dimensional image, we define our print function to print only those nodes whose reflection is showing on one
#   of the mirrors, first we print the value of the nodes with reflections appearing on the right mirror and then
#   print the values of the ones appearing on the left and we don't need to print the same node again which has
#   already been printed on right mirror, so each node is going to printed only once even in a case where the node
#   has a reflection on both mirrors. Suppose in the array representation of binary trees, we fill the positions
#   where the left or right child of a node does not exist with 0s. So the tree
#
#        3
#
#       /
#
#      2
#
#     /
#
#    1
#
#   will look in array representation as 3 2 0 1 0 0 0 0 0 0 0 0 0 0 0 i.e.
#
#            3
#          /   \
#         2     0
#        /     / \
#       1   0  0   0
#      /  /  /  / \
#     0  0 0 0 0 0 0  0
#
#   and the tree
#
#           1
#
#          /
#         2   3
#
#   will look in the array representation as 1 2 3 0 0 0 0 i.e.
#
#            1
#
#          /
#         2    3
#
#        /    /
#       0   0  0  0
#
#   here for every ith node, it's left child is at (2 * i) th and right child at (2 * i + 1)th position.
#
#   Input:
#   First line contains number of test cases T. First line of each test case contains a single integer N,
#   size of array and second line contains the tree in array representation form as mentioned above.
#
#   Output:
#   For each test case, first print the value of the nodes with reflections appearing on the right mirror and
#   then print values of the ones appearing on the left and don't need to print the same node again which has
#   already been printed on right mirror, so each node is going to printed only once even in a case
#   where the node has a reflection on both mirrors.
#
#   Constraints:
#   1 <= T <= 20
#   3 <= N <= 2^18
#   0 <= **Ai <= 1000000
#
#   Note:
#   The value of N will always be greater than equal to 3 and will be in the form (2^k-1) where k>=2.
#   Last level of the tree is filled with all 0s.
#   Assume array indices start from 1.
#
#   SAMPLE INPUT
#   2
#   7
#   1 2 3 0 0 0 0
#   7
#   1 3 0 0 0 0 0
#
#   SAMPLE OUTPUT
#   1
#   3
#   2
#
#   1
#   3
#
#######################################################################################################################
