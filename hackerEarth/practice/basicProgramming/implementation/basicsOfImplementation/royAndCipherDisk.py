# Roy and Cipher Disk

#######################################################################################################################
#
#   Roy's friends has been spying on his text messages, so Roy thought of an algorithm to encrypt text messages.
#   Encryption Algorithm is as follows:
#   We say message to be encrypted as Plain Text and encrypted form of message as Cipher.
#   Plain Text consists of lower case alphabets only.
#   Consider the Cipher Disk as shown in figure.
#   (image)
#
#   Initially, we start with 0 (zero). For each character in Plain Text, we move either clockwise or anti-clockwise
#   on the disk depending on which way is closest from where we are currently standing.
#   If both clockwise and anti-clockwise distances are equal, we give priority to clockwise movement.
#   Clockwise movements are represented using positive numbers while Anti-clockwise movements are represented
#   as negative numbers.
#   Roy needs your help in implementing this algorithm. Given a Plain Text message, your task is to encrypt
#   it using above algorithm and print the Cipher Text.
#
#   Input:
#   First line contains integer T - number of test cases.
#   Each of next T lines contains a string representing Plain Text message.
#
#   Output:
#   For each test case, print the encrypted form of given string in new line.
#   Each line should consist of space separated integers in the range [-12,13].
#   See the sample test case for more clarification.
#
#   Constraints:
#   1 <= T <= 100
#   1 <= Length of Plain Text string <= 100
#
#   Sample Test Case Explanation:
#   Explanation for 3rd sample test case "correct"
#   (image)
#
#   SAMPLE INPUT
#   3
#   aeiou
#   hackerearth
#   correct
#
#   SAMPLE OUTPUT
#   0 4 4 6 6
#   7 -7 2 8 -6 13 13 -4 -9 2 -12
#   2 12 3 0 13 -2 -9
#
#   Explanation
#   We begin from 0 (zero) 1. 'a'->'c' - two steps clockwise, we reach 'c' 2. 'c'->'o' - twelve steps clockwise,
#   we reach 'o' 3. 'o'->'r' - three steps clockwise, we reach 'r' 4. 'r'->'r' - we are already at 'r',
#   so zero steps 5. 'r'->'e' - thirteen steps clockwise, we reach 'e' 6. 'e'->'c' - here moving anti-clockwise
#   is optimal, so two steps anticlockwise, and for anticlockwise we add negative sign. 7. 'c'->'t' - again
#   anti-clockwise, nine steps.
#
#######################################################################################################################
