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
    if dilkash.isalpha():
        shatru.append(dilkash.title())
    else:
        shatru.append(dilkash)

print(' '.join(shatru))
