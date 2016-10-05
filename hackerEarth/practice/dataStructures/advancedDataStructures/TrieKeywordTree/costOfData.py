# Cost of Data

#######################################################################################################################
#
#   Strings can be efficiently stored as a data structure, to have efficient searching methods.
#   A new startup is going to use this method, but they don't have much space. So they want to check beforehand
#   how much memory will be required for their data.
#   Following method describes the way in which this startup's engineers save the data in the structure.
#
#   Suppose they have 5 strings/words: et,eq,bd,be,bdp
#   A empty node is kept NULL, and strings are inserted into the structure one by one.
#   Initially the structure is this:
#
#   NULL
#
#   After inserting "et", the structure is this:
#
#   NULL
#    |
#    e
#    |
#    t
#
#   After inserting "eq", the structure is this:
#
#      NULL
#      /
#     e
#    / \
#   t   q
#
#   After inserting "bd", the structure is this:
#
#      NULL
#      /  \
#     e    b
#    / \    \
#   t   q    d
#
#   After inserting "be", the structure is this:
#
#        NULL
#      /     \
#     e       b
#    / \     / \
#   t   q   e   d
#
#   After inserting "bdp", the structure is this:
#
#       NULL
#      /     \
#     e       b
#    / \     / \
#   t   q   e   d
#                \
#                 p
#
#   Therefore a total of 8 nodes are used here.
#
#   Input:
#   First line contains N, the number of strings they have.
#   Each of the next N lines contain one string. Each string consists only of lowercase letters.
#
#   Output:
#   Print the required number of nodes.
#
#   **Constraints:
#   1 <= N <= 105
#   Length of each string <= 30
#
#   Note: No two strings are same, though one string could be prefix of another.
#
#   SAMPLE INPUT
#   5
#   et
#   eq
#   bd
#   be
#   bdp
#
#   SAMPLE OUTPUT
#   8
#
#######################################################################################################################
