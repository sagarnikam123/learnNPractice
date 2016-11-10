# Short Palindrome

#######################################################################################################################
#
#   Consider a string s, of n lowercase English letters where each character, si (0 <= i < n), denotes the letter at
#   index i in s. We define an (a,b,c,d) palindromic tuple of s to be a sequence of indices
#   in s satisfying the following criteria:
#       sa = sd , meaning the characters located at indices a and b are the same.
#       sb = sc , meaning the characters located at indices b and c are the same.
#       0 <= a < b < c < d < |s|, meaning that a, b, c, and d are ascending in value
#           and are valid indices within string s.
#   Given s, find and print the number of (a,b,c,d) tuples satisfying the above conditions.
#   As this value can be quite large, print it modulo 10^9 + 7.
#
#   Input Format
#   A single string denoting s.
#
#   Constraints
#   1 <= |s| <= 10^6
#   It is guaranteed that s only contains lowercase English letters.
#
#   Output Format
#   Print the the number of (a,b,c,d) tuples satisfying the conditions in the Problem Statement above.
#   As this number can be very large, your answer must be modulo (10^9 + 7).
#
#   Sample Input 0
#   kkkkkkz
#
#   Sample Output 0
#   15
#
#   Explanation 0
#   The letter z will not be part of a valid tuple because you need at least two of the same character to satisfy
#   the conditions defined above. Because all tuples consisting of four k's are valid, we just need to find the
#   number of ways that we can choose four of the six k's. This means our answer is (6/4) mod (10^9 + 7) = 15.
#
#   Sample Input 1
#   ghhggh
#
#   Sample Output 1
#   4
#
#   Explanation 1
#   The valid tuples are:
#   (0,1,2,3)
#   (0,1,2,4)
#   (1,3,4,5)
#   (2,3,4,5)
#   Thus, our answer is 4 mod(10^9 + 7) = 4.
#
#######################################################################################################################
