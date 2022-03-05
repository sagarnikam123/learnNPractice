# Sherlock and Anagrams

#######################################################################################################################
#
#   Given a string S, find the number of "unordered anagrammatic pairs" of substrings.
#
#   Input Format
#   First line contains T, the number of testcases. Each testcase consists of string S in one line.
#
#   Constraints
#   1 <= T <= 10
#   2 <= length(S) <= 100
#   String S contains only the lowercase letters of the English alphabet.
#
#   Output Format
#   For each testcase, print the required answer in one line.
#
#   Sample Input#00
#   2
#   abba
#   abcd
#
#   Sample Output#00
#   4
#   0
#
#   Sample Input#01
#   5
#   ifailuhkqq
#   hucpoltgty
#   ovarjsnrbf
#   pvmupwjjjf
#   iwwhrlkpek
#
#   Sample Output#01
#   3
#   2
#   2
#   6
#   3
#
#   Explanation
#   Sample00
#   Let's say S[i,j] denotes the substring Si ,Si+1,....,Sj.
#
#   testcase 1:
#   For S=abba, anagrammatic pairs are: {S[1,1], S[4,4]}, {S[1,2], S[3,4]}, {S[2,2], S[3,3]} and {S[1,3], S[2,4]}.
#
#   testcase 2:
#   No anagrammatic pairs.
#
#   Sample01
#   Left as an exercise to you.
#
#######################################################################################################################
