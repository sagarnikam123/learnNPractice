# Joseph and Tree

#######################################################################################################################
#
#   Joseph loves games about a tree! His friend Nick invented a game for him!
#   Initially, there is a rooted weighted tree with N vertices numbered 1…N . Nick guarantees that the tree is
#   connected, and there is a unique path between any vertices! Also he gave us Q queries on it of following type:
#
#       v and k : Let S denote the sorted (non decreasing order) array of shortest distances from v to any other
#   vertex from subtree rooted v. Answer will be kth element of S. If such a number does not exist, i.e. the S has
#   less than k elements, answer is −1. Note that v is not included in his own subtree.
#
#   All the indices in the queries are 1-based. Root of the tree is node 1.
#   But it turns out, Joseph has an exam tomorrow, and he doesn't have time for playing a game! And he asks your help!
#
#   Input format
#   The first line contains a single integer N denoting the number of vertices of the tree.
#   The next N−1 lines contain three integers ai,bi and wi, denoting that there is an edge between vertices
#       ai and bi with weight wi.
#   The next line contains a single integer Q denoting the number of queries.
#   The next Q lines contain two integers vi and ki, denoting the query described above.
#
#   Output format
#   Print the answer for each query. Note that if there is no such element, print −1.
#
#   Constraints
#   1 <= N,Q <= 105
#   1 <= ai,bi,vi <= N;ai ≠ bi
#   1 <= wi,ki <= 109
#
#   Subtasks
#       Subtask #1 (30 points) : 1≤N,Q≤2000
#       Subtask #2 (70 points) : Original constraints
#
#   SAMPLE INPUT
#   7
#   2 1 3
#   1 3 1
#   2 4 2
#   3 5 5
#   3 6 1
#   7 3 2
#   5
#   1 3
#   2 1
#   2 2
#   3 2
#   6 4
#
#   SAMPLE OUTPUT
#   3
#   2
#   -1
#   2
#   -1
#
#   Explanation
#   In the first query, v=1 and S={1,2,3,3,5,6}, thus kth element, i.e. 3rd element is equal to 3.
#   In the second query, v=2 ans S={2}, thus answer is 2.
#   In the third query, v=2 but size of S is less than 2, thus answer is −1.
#
#######################################################################################################################
