# Valentina and the Gift Tree

#######################################################################################################################
#
#   The Valentina's birthday is coming soon! Her parents love her so much that they are preparing some gifts to give
#   her. Valentina is cute and smart and her parents are planning to set an interesting task for her.
#   They prepared a tree (a connected graph without cycles) with one gift in each vertex. Vertices are numbered
#   1 through N and the i-th of them contains a gift with value Gi. A value Gi describes Valentina's happiness
#   if she got a gift from the i-th vertex. All gifts are wrapped so Valentina doesn't know their values.
#   Note that Gi could be negative and it would mean that Valentina doesn't like the gift (do you remember when
#   your parents gave you clothes or toys not adequate to your interests?).
#
#   Let's consider the following process:
#   1) Valentina chooses two vertices, A and B (not necessarily distinct).
#   2) She unpacks all gifts on the path connecting A and B and thus she sees their values.
#   3) She chooses some part of the path connecting A and B. The chosen part must be connected and can't be
#       empty (hence, it must be a path).
#   4) Valentina takes all gifts in the chosen part of the path and her total happiness is equal to the sum of
#       the values of taken gifts.
#
#   Valentina is smart and for chosen A and B she will choose a part resulting in the biggest total happiness.
#   In order to maximize her chance to get a good bunch of gifts, parents allow her to ask Q questions, each with
#   two numbers, A and B. For each Valentina's question parents will tell her the answer - the maximum total
#   happiness for chosen A and B.
#   They noticed that answering Valentina's questions is an interesting problem. They want to know if you are
#   smart enough to correctly answer all questions.
#
#   Input format
#   The first N+1 lines describe a tree with gifts.
#   The first of them contains a single integer N, the number of vertices in a tree.
#   The next N-1 lines contain 2 integers each, denoting two vertices connected by an edge.
#   The next line contains N space-separated integers, G1, G2, ..., GN.
#
#   Then, the questions are given.
#   One line contains a single integer Q, the number of Valentina's questions.
#   Finally, each of the last Q lines contains two integers A and B (1 <= A, B  <=  N), describing one question.
#
#   Output format
#   For each of the Q questions print the answer in a separate line.
#   Constraints
#
#   2  <=  N  <=  100,000
#   1  <=  Q  <=  500,000
#   |Gi|  <=  10^9
#
#   SAMPLE INPUT
#   6
#   1 2
#   3 1
#   1 4
#   4 5
#   4 6
#   -1 2 2 -2 5 8
#   7
#   2 5
#   2 3
#   1 5
#   5 3
#   4 1
#   6 5
#   4 4
#
#   SAMPLE OUTPUT
#   5
#   3
#   5
#   5
#   -1
#   11
#   -2
#
#######################################################################################################################
