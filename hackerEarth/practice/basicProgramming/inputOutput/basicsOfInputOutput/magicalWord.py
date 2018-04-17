# Magical Word

#######################################################################################################################
#
#   Dhananjay has recently learned about ASCII values.He is very fond of experimenting. With his knowledge of
#   ASCII values and character he has developed a special word and named it Dhananjay's Magical word.
#   A word which consist of alphabets whose ASCII values is a prime number is an Dhananjay's Magical word.
#   An alphabet is Dhananjay's Magical alphabet if its ASCII value is prime.
#   Dhananjay's nature is to boast about the things he know or have learnt about. So just to defame his friends
#   he gives few string to his friends and ask them to convert it to Dhananjay's Magical word. None of his friends
#   would like to get insulted. Help them to convert the given strings to Dhananjay's Magical Word.
#
#   Rules for converting:
#   1.Each character should be replaced by the nearest Dhananjay's Magical alphabet.
#   2.If the character is equidistant with 2 Magical alphabets.
#       The one with lower ASCII value will be considered as its replacement.
#
#   Input format:
#   First line of input contains an integer T number of test cases.
#   Each test case contains an integer N (denoting the length of the string) and a string S.
#
#   Output Format:
#   For each test case, print Dhananjay's Magical Word in a new line.
#
#   Constraints:
#   1 <= T <= 100
#   1 <= |S| <= 500
#
#   SAMPLE INPUT
#   1
#   6
#   AFREEN
#
#   SAMPLE OUTPUT
#   CGSCCO
#
#   Explanation
#   ASCII values of alphabets in AFREEN are 65, 70, 82, 69 ,69 and 78 respectively which are converted to CGSCCO
#   with ASCII values 67, 71, 83, 67, 67, 79 respectively. All such ASCII values are prime numbers.
#
#######################################################################################################################

kikarta = int(input().strip())

for nal in range(kikarta):
    tussiLenght = int(input().strip())
    goldenThumka = [ord(j) for j in input().strip()]
    print(goldenThumka)
