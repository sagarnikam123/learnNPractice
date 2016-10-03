# Build a Palindrome

#######################################################################################################################
#
#   You have two strings a and b. Find a string s, such that:
#       s can be expressed as s = sa + sb where sa is a non-empty substring of a and sb is a non-empty substring of b.
#       s is a palindromic string.
#       The length of s is as long as possible.
#   For each of the q pairs of strings (ai and bi) received as input, find and print string si on a new line.
#   If you're able to form more than one valid string si, print whichever one comes first alphabetically.
#   If there is no valid answer, print -1 instead.
#
#   Input Format
#   The first line contains a single integer q, denoting the number of queries.
#   The subsequent lines describe each query over two lines:
#       The first line contains a single string denoting a.
#       The second line contains a single string denoting b.
#
#   Constraints
#   1 <= q <= 10
#   1 <= |a|, |b| <= 10^5
#       a and b contain only lowercase English letters.
#       Sum of |a| over all queries does not exceed 2 x 10^5
#       Sum of |b| over all queries does not exceed 2 x 10^5
#
#   Output Format
#   For each pair of strings (ai and bi), find some si satisfying the conditions above and print it on a new line.
#   If there is no such string, print -1 instead.
#
#   Sample Input
#   3
#   bac
#   bac
#   abc
#   def
#   jdfh
#   fds
#
#   Sample Output
#   aba
#   -1
#   dfhfd
#
#   Explanation
#   We perform the following three queries:
#       Concatenate sa = "a" with sb = "ba" to create s = "aba".
#       We're given a= "abc" and sa = "def"; because both strings are composed of unique characters, we cannot use t
#           hem to form a palindromic string. Thus, we print -1.
#       Concatenate sa = "dfh" with sb = "fd" to create s = "dfhdf". Note that we chose these particular substrings
#           because the length of string s must be maximal.
#
#######################################################################################################################
