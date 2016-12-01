# Rhezo and character frequency

#######################################################################################################################
#
#   Rhezo got a string S, a character C and an integer P as a birthday gift from his best friend JK.
#   He got curious about the gift and started analysing it. He found out that the maximum frequency of character C
#   over all the P length substrings of S is equal to some integer Z.
#   He doesn't know programming, so asks you to find the largest position, where, if we insert any character after
#   that position, the maximum frequency of C
#   over all the P length substrings becomes Z+1. If there is no such position, output −1.
#
#   If the answer is the position before the first character, output 0.
#
#   Input:
#   First line of the input contains a string S.
#   Second line of the input contains the character C.
#   Next and the last line contains a single integer P.
#
#   Output:
#   Print an answer in a separate line.
#
#   Constraints:
#   1 <= |S| <= 10^3
#   1 <= P <= |S|
#   S consists of lowercase alphabetic characters
#   C is any lowercase alphabetic character
#
#   SAMPLE INPUT
#   asdnajsdnasj
#   d
#   3
#
#   SAMPLE OUTPUT
#   9
#
#   Explanation
#   Inserting a character after 9th position, gives a sub string of length 3 in which frequency of ′d′ is 2.
#
#######################################################################################################################
