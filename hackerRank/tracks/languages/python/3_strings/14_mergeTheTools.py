# Merge the Tools!

#######################################################################################################################
#
#   In this task, you would be given a string S of length N. You have to divide this string into N/K equal
#   parts thus each part contains exactly K elements.
#
#   Let us consider the string thus obtained in part i as Ti . For each string Ti thus obtained you have
#   to make a modified string such that each character that occurs in Ti occurs exactly once in the modified string.
#
#   Suppose the first occurence of ch1 was before the first occurence of ch2 in Ti. Then ch1 should occur before ch2 in
#   the modified string of Ti too. Output N/K lines each containing the modified string for the corresponding chunk Ti.
#
#   Input Format
#   First line consists of the string S.
#   Second line consists of K denoting the length of each of the N/K parts.
#
#   Output Format
#   N/K lines denoting the modified string corresponding to each chunk of string.
#
#   Constraints
#   1 <= N <= 10^4
#   1 <= K <= N
#
#   It is guaranteed that N is divisible by K.
#   Here N denotes the length of the string S.
#
#   Sample Input
#   AABCAAADA
#   3
#
#   Sample Output
#   AB
#   CA
#   AD
#
#   Explanation
#   The string S is broken into equal parts of length 3 each making ("AAB", "CAA", "ADA").
#   Each of these strings are modified according to the algorithm mentioned in the statement
#   making ("AB", "CA", "AD") and then each of these modified strings is printed in seperate lines.
#
#######################################################################################################################

s = input().strip()
k = int(input().strip())

n = len(s)//k
i = 0
while i+n < len(s) + 1:
    bheed = []
    for dance in s[i:i+n]:
        if dance not in bheed:
            bheed.append(dance)
    print(''.join(bheed))
    i += 3
