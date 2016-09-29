# Bear and Steady Gene

#######################################################################################################################
#
#   A gene is represented as a string of length n (where n is divisible by 4), composed of the letters A, C, T, and G.
#   It is considered to be steady if each of the four letters occurs exactly n/4 times.
#   For example, GACT and AAGTGCCT are both steady genes.
#   Bear Limak is a famous biotechnology scientist who specializes in modifying bear DNA to make it steady.
#   Right now, he is examining a gene represented as a string s. It is not necessarily steady. Fortunately, Limak can
#   choose one (maybe empty) substring of s and replace it with any string of the same length.
#   Modifying a large substring of bear genes can be dangerous. Given a string s, can you help Limak find the length
#   of the smallest possible substring that he can replace to make s a steady gene?
#   Note: A substring of a string S is a subsequence made up of zero or more consecutive characters of S.
#
#   Input Format
#   The first line contains an interger n divisible by 4, denoting the length of a string s.
#   The second line contains a string s of length n. Each character is one of the four: A, C, T, G.
#
#   Constraints
#   4 <= n <= 500 000
#   n is divisible by 4
#
#   Subtask
#       4 <= n <= 2000 in tests worth 30% points  .
#
#   Output Format
#   On a new line, print the minimum length of the substring replaced to make s stable.
#
#   Sample Input
#   8
#   GAAATAAA
#
#   Sample Output
#   5
#
#   Explanation
#   One optimal solution is to replace a substring AAATA with TTCCG, resulting in GTTCCGAA.
#   The replaced substring has length 5, so we print 5 on a new line.
#
#######################################################################################################################
