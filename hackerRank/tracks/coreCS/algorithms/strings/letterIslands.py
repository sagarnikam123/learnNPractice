# Letter Islands

#######################################################################################################################
#
#   You are given string s and number k.
#   Consider a substring p of string s. For each position of string s mark it if there is an occurence of the
#   substring that covers the position. More formally, position i will be marked if there exists such index j
#   that: j <= i <= j + |p| - 1 and sj sj+1...sj+|p|-1 = p. We will tell p produce x islands if all the marked
#   positions form x groups of contiguous positions.
#   For example, if we have a string ababaewabaq the substring aba marks the positions 1, 2, 3, 4, 5, 8, 9, 10; that
#   is XXXXXewXXXq (X denotes marked position). We can see 2 groups of contiguous positions, that is 2 islands.
#   Finally, substring aba produces 2 islands in the string ababaewabaq.
#   Your task is to calculate the number of different substrings of string s, that produces exactly k islands in it.
#
#   Input Format
#   The first line contains string s(1 < |s| <= 10^5). The string consists of lowercase letters only.
#   The second line contains an integer k(1 <= k <= |s|).
#
#   Output Format
#   Output a single integer - the answer to the problem.
#
#   Sample Input
#   abaab
#   2
#
#   Sample Output
#   3
#
#   Explanation
#   All the suitable substrings are: a, ab, b.
#
#######################################################################################################################
