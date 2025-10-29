# What's Your Name?

#######################################################################################################################
#
#   You are given the firstname and lastname of a person on two different lines.
#   Your task is to read them and print the following:
#   Hello firstname lastname! You just delved into python.
#
#   Input Format
#   The first line contains the first name, and the second line contains the last name.
#
#   Constraints
#   The length of the first and last name ≤ 10.
#
#   Output Format
#   Print the output as mentioned above.
#
#   Sample Input
#   Guido
#   Rossum
#
#   Sample Output
#   Hello Guido Rossum! You just delved into python.
#
#   Explanation
#   The input read by the program is stored as a string data type. A string is a collection of characters.
#
#######################################################################################################################

firstName = input().strip()
lastName = input().strip()

print('Hello '+ firstName+' '+ lastName + '! You just delved into python.')
