# Python: Division

#######################################################################################################################
#
#   Task
#   Read two integers and print two lines. The first line should contain integer division a//b .
#   The second line should contain float division a/b .
#
#   You don't need to perform any rounding or formatting operations.
#
#   Input Format
#   The first line contains the first integer a. The second line contains the second integer b.
#
#   Output Format
#   Print the two lines as described above.
#
#   Sample Input
#   4
#   3
#
#   sample Output
#   1
#   1.3333333333333333
#
#######################################################################################################################

firstNumber = int(input().strip())
secondNumber = int(input().strip())

print(firstNumber//secondNumber) # integer division
print(firstNumber/secondNumber) # floating division
