# Shil and Round Numbers

#######################################################################################################################
#
#   Shil likes Round numbers very much . A number is called Round number if its non-negative and its first and last
#   digits are same. For example 0 , 3 , 343 and 50005 are round numbers whereas 1000 is not a round number.
#   Shil has an array A1 , A2 .. AN . He wants to answer Q queries of following two type :
#   1 l r : Find total number of round numbers in range [l, r]
#   2 i K : Update ith element of array A to K i.e perform the operation Ai = K.
#   Since you are the friend of Shil , he asks for your help .
#
#   INPUT:
#   First line consists of two integers N and Q. Next line consists of N integers A1 , A2 .. AN. Next line consists
#   of Q queries. Each query consists of three integers as mentioned in the problem.
#
#   OUTPUT:
#   For each query of type 2 , output total number of round numbers in range [l,r].
#
#   CONSTRAINTS:
#   1  <=  N , Q  <=  2*10^5
#   -10^18  <=  Ai <= 10^18
#   1  <=  l,r <= N
#   -10^18  <=  K  <=  10^18
#
#   SAMPLE INPUT
#   5 5
#   1 2 33 456 111
#   1 1 2
#   1 1 5
#   2 1 6
#   2 2 1000
#   1 1 5
#
#   SAMPLE OUTPUT
#   2
#   4
#   3
#
#   Explanation
#   Out of all the initial numbers given in array A :- 1,2,33,111 are round numbers .
#   For 1st query , there are two round numbers - A[1] and A[2].
#   For 2st query , there are 4 round numbers - A[1] , A[2] , A[3] , A[5].
#   In 3rd query , we are updating 1st position with 6 , which is a round number.
#   In 4th query , we are updating 2nd position with 1000 , which isn't a round number.
#   For 5th query , there are 3 round numbers - A[1] , A[3] and A[5].
#
#######################################################################################################################
