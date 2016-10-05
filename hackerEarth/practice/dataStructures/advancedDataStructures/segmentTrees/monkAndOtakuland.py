# Monk and Otakuland

#######################################################################################################################
#
#   Monk lives in Otakuland. Otakuland consists of N vertices and N-1 directed edges. i-th edge is a directed edge
#   either from i-th vertex to i+1-th vertex or from i+1-th vertex to i-th vertex. You are given M Queries.
#   Queries are 2 types:
#       1 l r - Reverse the direction of the edges between l-th vertex and r-th vertex.
#       2 f t - Output the minimum number of edges which you have to reverse the direction to arrive from f to t.
#
#   Input:
#   The first line contains two integers N, the number of vertices and M, the number of queries. The next line
#   will contains N-1 characters which represent the direction of the edges. i-th character is
#   either '>' or '<': '>' represents that only i -> i+1 is valid, '<' represents that only i+1 -> i is valid.
#   The following M lines will each contain a query like the ones mentioned above.
#
#   Output:
#   For query 2, print the answer in a new line.
#
#   Constraints:
#   2 ≤ N ≤ 200000
#   1 ≤ M ≤ 200000
#   1 ≤ l < r ≤ N
#   1 ≤ f , t ≤ N
#
#   SAMPLE INPUT
#   6 6
#   >><<>
#   2 1 6
#   2 6 1
#   1 3 5
#   2 1 6
#   1 1 6
#   2 6 1
#
#   SAMPLE OUTPUT
#   2
#   3
#   0
#   0
#
#   Explanation
#   In the sample testcase the graph is like this, 1->2->3<-4<-5->6.
#   At the first query, Monk have to reverse the
#   direction of 3rd edge and 4th edges to arrive from 1st vertex to 6th vertex.
#   Second, Monk have to reverse the direction of 1st, 2nd, and 5th edges to arrive from 6th vertex to 1st vertex.
#   Third, Reverse the direction of the edges between 3rd vertex and 5th vertex. After the query,
#       graph is like this, 1->2->3->4->5->6.
#   Fourth, Monk don't have to reverse the direction of any edge.
#   Fifth, Reverse the direction of the edges
#   between 1st vertex and 6th vertex. After the query, graph is like this, 1<-2<-3<-4<-5<-6.
#   Sixth, Monk don't have to reverse the direction of any edge.
#
#######################################################################################################################
