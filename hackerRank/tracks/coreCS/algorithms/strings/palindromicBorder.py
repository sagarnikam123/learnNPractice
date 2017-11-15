# Palindromic Border

#######################################################################################################################
#
#   A border of a string is a proper prefix of it that is also a suffix. For example:
#       a and abra are borders of abracadabra,
#       kan and kankan are borders of kankankan.
#       de is a border of decode.
#   Note that decode is not a border of decode because it's not proper.
#
#   A palindromic border is a border that is palindromic. For example,
#       a and ana are palindromic borders of anabanana,
#       l, lol and lolol are palindromic borders of lololol.
#   Let's define P(s) as the number of palindromic borders of string s. For example, if s = lololol, then P(s) = 3.
#
#   Now, a string of length N has exactly N(N+1)/2 non-empty substrings (we count substrings as distinct if they are
#   of different lengths or are in different positions, even if they are the same string). Given a string s,
#   consisting only of the first 8 lowercase letters of the English alphabet, your task is to find the sum of P(s')
#   for all the non-empty substrings s' of s. In other words, you need to find:
#   E(Summation of ) 1<= i <= j <= N  P(si...j)
#
#   where si...j is the substring of s starting at position i and ending at position j.
#
#   Since the answer can be very large, output the answer modulo 10^9 + 7.
#
#   Input Format
#   The first line contains a string consisting of N characters.
#
#   Output Format
#   Print a single integer: the remainder of the division of the resulting number by 10^9 + 7.
#
#   Constraints
#   1 <= N <= 10^5
#
#   All characters in the string can be any of the first 8 lowercase letters of the English alphabet (abcdefgh).
#
#   Sample Input 1
#   ababa
#
#   Sample Output 1
#   5
#
#   Sample Input 2
#   aaaa
#
#   Sample Output 2
#   10
#
#   Sample Input 3
#   abcacb
#
#   Sample Output 3
#   3
#
#   Explanation
#   s = ababa has 15 substrings but only 4 substrings have palindromic borders.
#
#   s1...3 = aba -> P (s1...3) = 1
#   s1...5 = ababa -> P(s1...5) = 2
#   s2...4 = bab -> P(s2...4) = 1
#   s3...5 = aba -> P(s3...5) = 1
#
#######################################################################################################################
