# Shil and Special Pairs

#######################################################################################################################
#
#   Shil has a permutation p1 , p2 .. pN of numbers from 1 to N and M queries. Each query consists of two
#   integers l and r . Answer to each query is total number of pairs[i , j] such that l ≤ i ≤ j ≤ r and|pi - pj| ≤ D.
#
#   INPUT:
#   First line consists of three integers N, M and D. Next line consists of permutation p1 , p2 .. pN of the
#   first N natural numbers. Next M lines consists of two integers l and r .
#
#   OUTPUT:
#   Output M integers with ith integer corresponding answer to ith query.
#
#   CONSTRAINTS:
#   1 ≤ N, M ≤ 10^5
#   1 ≤ D ≤ 10
#   1 ≤ pi ≤ N
#   1 ≤ l ≤ r ≤ N
#
#   SAMPLE INPUT
#   5 5 1
#   1 4 2 3 5
#   1 3
#   2 4
#   1 5
#   2 2
#   4 5
#
#   SAMPLE OUTPUT
#   4
#   5
#   9
#   1
#   2
#
#   Explanation
#   For 1st query , all the pairs are (1,1) , (4,4) , (2,2) , (1,2).
#   For 2nd query , all the pairs are (4,4) , (2,2) , (3,3) , (4,3) , (2,3).
#   For 3rd query , all the pairs are (1,1) , (4,4) , (2,2) , (3,3) , (5,5) , (1,2) , (4,5) , (4,3) , (2,3).
#   Note that numbers in the bracket are values not indices of permutation.
#
#######################################################################################################################
