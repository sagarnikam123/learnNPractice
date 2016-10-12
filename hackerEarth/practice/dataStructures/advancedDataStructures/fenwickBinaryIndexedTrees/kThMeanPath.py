# K-th mean path

#######################################################################################################################
#
#   Given a weighted rooted tree with n vertices. Let's call simple path from u to v vertical iff u≠v and u is on
#   simple path from root to v. The weight of the path is a sum of weights for all edges in the path.
#   The mean weight of the path is a weight of the path divided by number of edges in it. Calculate mean weight of
#   each vertical path, sort them and print k-th value in sorted order.
#
#   Input Format
#   The first line of input contains two integers n
#   and k (2 <= n <= 10^6). It is guaranteed that there are at least k vertical paths in the given tree.
#   Next n−1 lines contain description of edges u,v,c (1 <= u,v <= n,1 <= c <= 10^5 ).
#   The root of the tree is vertex 1.
#
#   Output Format
#   Print the k-th minimal mean weight as an irreducible fraction.
#   Scoring
#   n <= 100 − 10 points
#   n <= 2000 − 10 points
#   n <= 15000 , k <= 10^5 − 15 points
#   n <= 15000 − 10 points
#   n <= 10^5 − 25 points
#   n <= 10^6,k <= 500 − 30 points
#
#   SAMPLE INPUT
#   5 5
#   1 2 2
#   1 5 2
#   2 3 2
#   2 4 3
#
#   SAMPLE OUTPUT
#   5/2
#
#   Explanation
#   These are the vertical paths in the given tree: 1→2, 1→2→3, 1→2→4, 1→5, 2→3 and 2→4
#   Mean weights of the paths:
#   f(1→2)=2
#   f(1→2→3)=4/2=2
#   f(1→2→4)=5/2
#   f(1→5)=2
#   f(2→3)=2
#   f(2→4)=3
#   So, if we sort these values, we get: 2,2,2,2,5/2,3
#
#######################################################################################################################
