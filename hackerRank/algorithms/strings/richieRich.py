# Richie Rich

#######################################################################################################################
#
#   Sandy likes palindromes. A palindrome is a word, phrase, number, or other sequence of characters which reads the
#   same backward as it does forward. For example, madam is a palindrome.
#   On her 7th birthday, Sandy's uncle, Richie Rich, offered her an n-digit check which she refused because the
#   number was not a palindrome. Richie then challenged Sandy to make the number palindromic by changing no more than
#   k digits. Sandy can only change 1 digit at a time, and cannot add digits to
#   (or remove digits from) the number. Given k and an n-digit number, help Sandy determine the largest possible
#   number she can make by changing <= k digits.
#   Note: Treat the integers as numeric strings. Leading zeros are permitted and can't be ignored (So 0011 is not a
#   palindrome, 0110 is a valid palindrome). A digit can be modified more than once.
#
#   Input Format
#   The first line contains two space-separated integers, n(the number of digits in the number) and k(the maximum
#   number of digits that can be altered), respectively.
#   The second line contains an n-digit string of numbers that Sandy must attempt to make palindromic.
#
#   Constraints
#   0 < n <= 10^5
#   0 <= k <= 10^5
#   Each character i in the number is an integer where 0 <= i <= 9.
#
#   Output Format
#   Print a single line with the largest number that can be made by changing no more than k digits;
#   if this is not possible, print -1.
#
#   Sample Input 0
#   4 1
#   3943
#
#   Sample Output 0
#   3993
#
#   Sample Input 1
#   6 3
#   092282
#
#   Sample Output 1
#   992299
#
#   Sample Input 2
#   4 1
#   0011
#
#   Sample Output 2
#   -1
#
#   Explanation
#   Sample 0
#   There are two ways to make 3943 a palindrome by changing exactly k=1 digits:
#   3943 -> 3443
#   3943 -> 3993
#   3993 > 3443, so we print 3993.
#
#######################################################################################################################

#!/bin/python3

import sys

n,k = input().strip().split(' ')
n,k = [int(n),int(k)]
number = input().strip()
