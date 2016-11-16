# Palindromic String

#######################################################################################################################
#
#   You have been given a String S. You need to find and print whether this string is a palindrome or not.
#   If yes, print "YES" (without quotes), else print "NO" (without quotes).
#
#   Input Format
#   The first and only line of input contains the String S.
#   The String shall consist of lowercase English alphabets only.
#
#   Output Format
#   Print the required answer on a single line.
#
#   Constraints
#   1≤|S|≤100
#   Note - String S consists of lowercase English Alphabets only.
#
#   SAMPLE INPUT
#   aba
#
#   SAMPLE OUTPUT
#   YES
#
#######################################################################################################################

s = input().strip()

lambi = len(s)
half = lambi // 2
firstHalf = s[:half]

secondHalf = ''

phirki = half
if lambi % 2 == 0:
     phirki += - 1

for q in range(lambi - 1, phirki, -1):
    secondHalf += s[q]

if firstHalf == secondHalf:
    print('YES')
else:
    print('NO')
