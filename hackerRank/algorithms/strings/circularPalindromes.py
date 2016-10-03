# Circular Palindromes

#######################################################################################################################
#
#   A palindrome is a string that reads the same from left to right as it does from right to left.
#   Given a string S, of N lowercase English letters, we define a k-length rotation as cutting the first k
#   characters from the beginning of S and appending them to the end of S. For each S, there are N possible k-length
#   rotations (where 0 <= k < N). See the Explanation section for examples.
#   Given N and S, find all N k-length rotations of S; for each rotated string, Sk, print the maximum possible length
#   of any palindromic substring of Sk on a new line.
#
#   Input Format
#   The first line contains an integer,N (the length of S).
#   The second line contains a single string S.
#
#   Constraints
#   1 <= N <= 5 x 10^5
#   0 <= k < N
#   S is comprised of lowercase English letters.
#
#   Output Format
#   There should be N lines of output, where each line k contains an integer denoting the maximum length of any
#   palindromic substring of rotation Sk.
#
#   Sample Input 0
#   13
#   aaaaabbbbaaaa
#
#   Sample Output 0
#   12
#   12
#   10
#   8
#   8
#   9
#   11
#   13
#   11
#   9
#   8
#   8
#   10
#
#   Sample Input 1
#   7
#   cacbbba
#
#   Sample Output 1
#   3
#   3
#   3
#   3
#   3
#   3
#   3
#
#   Sample Input 2
#   12
#   eededdeedede
#
#   Sample Output 2
#   5
#   7
#   7
#   7
#   7
#   9
#   9
#   9
#   9
#   7
#   5
#   4
#
#   Explanation
#   Consider Sample Case 1, where S = "cacbbba".
#
#   The possible rotations, Sk, for string S are:
#   S0 = "cacbbba"
#   S1 = "acbbbac"
#   S2 = "cbbbaca"
#   S3 = "bbbacac"
#   S4 = "bbacacb"
#   S5 = "bacacbb"
#   S6 = "acacbbb"
#
#   The longest palindromic substrings for each Sk are:
#   S0 "cac" and "bbb", so we print their length (3) on a new line.
#   S1, "bbb" so we print its length (3) on a new line.
#   S2 "bbb" and "aca", so we print their length (3) on a new line.
#   S3 "bbb","aca" and "cac", so we print their length (3) on a new line.
#   S4  "aca" and "cac", so we print their length (3) on a new line.
#   S5 "aca" and "cac", so we print their length (3) on a new line.
#   S6  "aca", "cac" and "bbb", so we print their length (3) on a new line.
#
#######################################################################################################################
