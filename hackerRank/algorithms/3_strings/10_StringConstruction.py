# String Construction

#######################################################################################################################
#
#   Amanda has a string s, of m lowercase letters that she wants to copy into a new string p. She can perform the
#   following operations any number of times to construct string p:
#       Append a character to the end of string p at a cost of 1 dollar.
#       Choose any substring of p and append it to the end of p at no charge.
#   Given n strings (i.e.s0,s1,....,sn-1 ), find and print the minimum cost of copying each si to pi on a new line.
#
#   Input Format
#   The first line contains a single integer n, denoting the number of strings.
#   Each line i of the n subsequent lines contains a single string si.
#
#   Constraints
#   1 <= n <= 5
#   1 <= m <= 10^5
#
#   Subtasks
#   1 <= m <= 10^3 for 45% of the maximum score.
#
#   Output Format
#   For each string si (where 0 <= i < n), print the minimum cost of constructing string pi on a new line.
#
#   Sample Input
#   2
#   abcd
#   abab
#
#   Sample Output
#   4
#   2
#
#   Explanation
#   Query 0: We start with s = "abcd" and p="".
#       Append character 'a' to p at a cost of dollar = "a".
#       Append character 'b' to p at a cost of dollar p="ab".
#       Append character 'c' to p at a cost of dollar p="abc".
#       Append character 'd' to p at a cost of dollar p="abcd".
#
#   Because the total cost of all operations is 1+1+1+1 = 4 dollars, we print 4 on a new line.
#
#   Query 1: We start with s = "abab" and p="".
#       Append character 'a' to p at a cost of 1 dollar, p = "a".
#       Append character 'b' to p at a cost of 1 dollar, p = "ab".
#       Append substring 'ab' to p at no cost, p="abab".
#   Because the total cost of all operations is 1+1 = 2 dollars, we print 2 on a new line.
#
#   Note
#   A substring of a string S is another string S' that occurs "in" S (Wikipedia). For example, the substrings of
#   the string "abc" are "a", "b" ,"c", "ab", "bc", and "abc".
#
#######################################################################################################################

#!/bin/python3

import sys

n = int(input().strip())
for a0 in range(n):
    s = input().strip()
