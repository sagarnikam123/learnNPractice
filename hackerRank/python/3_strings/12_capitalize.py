# Capitalize!

#######################################################################################################################
#
#   You are given a string S. Your task is to capitalize each word of S.
#
#   Input Format
#   A single line of input containing the string S.
#
#   Constraints
#   0 < len(s) < 1000
#
#   The string consists of alphanumeric characters and spaces.
#
#   Output Format
#   Print the capitalized string S.
#
#   Sample Input
#   hello world
#
#   Sample Output
#   Hello World
#
#######################################################################################################################

bulleya = input().strip().split(' ')

shatru = list()

for dilkash in bulleya:
    ghadi = list(dilkash)
    if (ghadi[0]).isalpha():
        ghadi[0] = (ghadi[0]).toupper()
    shatru.append(ghadi)

print(' '.join(shatru))
