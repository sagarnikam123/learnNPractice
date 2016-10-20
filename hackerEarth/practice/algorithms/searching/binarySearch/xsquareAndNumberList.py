# Xsquare And Number List

#######################################################################################################################
#
#   Xsquare loves to play with numbers a lot. Today, he has a multi set S consisting of N integer elements.
#   At first, he has listed all the subsets of his multi set S and later replaced all the subsets with the
#   maximum element present in the respective subset.
#
#   For example :
#   Consider the following multi set consisting of 3 elements S = {1,2,3}.
#   (diagram)
#   (diagram)
#
#   Now, Xsquare wonders that given an integer K how many elements in the final list are greater than ( > ) ,
#   less than ( < ) or equals to ( == ) K.
#
#   To make this problem a bit more interesting, Xsquare decided to add Q queries to this problem.
#   Each of the queries has one of the following type.
#       > K : Count the number of elements X in the final list such that X > K.
#       < K : Count the number of elements X in the final list such that X < K.
#       = K : Count the number of elements X in the final list such that X == K.
#
#   Note:
#       Answer to a particular query can be very large. Therefore, Print the required answer modulo 10^9+7.
#       An empty subset is replaced by an integer 0.
#
#   Input
#   First line of input contains two space separated integers N and Q denoting the size of multiset S and number
#   of queries respectively. Next line of input contains N space separated integers denoting elements of multi
#   set S. Next Q lines of input contains Q queries each having one of the mentioned types.
#
#   Output
#   For each query, print the required answer modulo 10^9+7.
#
#   Constraints:
#       1 ≤ N,Q ≤ 5*10^5
#       1 ≤ K,Si ≤ 10^9
#       query_type = { < , > , = }
#
#   Warning :
#   Prefer to use printf / scanf instead of cin / cout.
#
#   SAMPLE INPUT
#   3 5
#   1 2 3
#   < 1
#   > 1
#   = 3
#   = 2
#   > 3
#
#   SAMPLE OUTPUT
#   1
#   6
#   4
#   2
#   0
#
#   Explanation
#   Refer to the above list for verification of the sample test cases.
#
#######################################################################################################################
