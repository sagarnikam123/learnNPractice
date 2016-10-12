# 2 vs 3

#######################################################################################################################
#
#   The fight for the best number in the globe is going to finally come to an end.The top two contenders for the
#   best number are number 2 and number 3.It's the final the entire world was waiting for. Expectorates from all
#   across the globe came to witness the breath taking finals.
#   The finals began in an astonishing way.A common problem was set for both of them which included both these number.
#   The problem goes like this.
#   Given a binary string (that is a string consisting of only 0 and 1).
#   They were supposed to perform two types of query on the string.
#   Type 0: Given two indices l and r.Print the value of the binary string from l to r modulo 3.
#   Type 1: Given an index l flip the value of that index if and only if the value at that index is 0.
#   The problem proved to be a really tough one for both of them.
#   Hours passed by but neither of them could solve the problem.So both of them wants you to solve this problem
#   and then you get the right to choose the best number in the globe.
#
#   Input:
#   The first line contains N denoting the length of the binary string .The second line contains the N length
#   binary string.Third line contains the integer Q indicating the number of queries to perform.This is followed
#   up by Q lines where each line contains a query.
#
#   Output:
#   For each query of Type 0 print the value modulo 3.
#
#   Constraints:
#   1 <= N <= 10^5
#   1 <= Q <= 10^5
#   0 <= l <= r < N
#
#   SAMPLE INPUT
#   5
#   10010
#   6
#   0 2 4
#   0 2 3
#   1 1
#   0 0 4
#   1 1
#   0 0 3
#
#   SAMPLE OUTPUT
#   2
#   1
#   2
#   1
#
#   Explanation
#   Query 1 : This is of type 0. The binary string is 010 which is equal to 2 and 2%3=2. So answer is 2.
#   Query 2 : This is of type 0. The binary string is 01 which is equal
#   to 1 ( (2^1) * 0 +(2^0) * 1 ) = 0 + 1 =1) and 1%3=1. So answer is 1.
#   Query 3 : This is of type 1. The value at index 1 is 0 so we flip it .The new string is 11010.
#   Query 4 : This is of type 0. The binary string is 11010 ( (2^0) * 0 +(2^1) * 1 +(2^2) * 0 +(2^3) * 1 +(2^4) * 1
#       = 2 + 8 +16 =26 ) which is equal to 26 and 26%3=2. So answer is 2.
#   Query 5 : This is of type 1. The value at index 1 is 1 so we do nothing .The new string is 11010.
#   Query 6 : This is of type 0. The binary string is 1101
#   ( (2^0) * 1 +(2^1) * 0 +(2^2) * 1 +(2^3) * 1 = 1 + 4+ 8 = 13 ) which is equal to 13 and 13%3=1. So answer is 1.
#
#######################################################################################################################
