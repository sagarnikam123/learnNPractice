# Shil and Palindrome

#######################################################################################################################
#
#   Shil is your new boss and he likes palindromes very much. Palindrome is a string that can be read the same way
#   in either direction, from the left to the right and from the right to the left. (ex. madam , aabaa, racecar)
#   Given a string S , beautiful Palindrome is a lexicographical minimum palindrome that can be formed
#   by rearranging all the characters of string S. In order to please your boss, find a beautiful Palindrome that
#   can be formed with help of string S.
#   String x is lexicographically less than string y, if either x is a prefix of y (and x ≠ y),
#   or there exists such i (1  <=  i  <=  min(|x|, |y|)), that xi < yi, and for any j (1  <=  j < i) xj = yj.
#   Here |a| denotes the length of the string a. The lexicographic comparison of strings is implemented
#   by operator < in modern programming languages​​.
#
#   Input:
#   Only line of input contains string S. All the letters of this string will be in lower letters('a' - 'z').
#
#   Output:
#   Output lexicographical minimum Palindrome that can be formed by rearranging all the letters of string S.
#   If no such Palindrome exist for given input, print -1.
#
#   Constraints:
#   1 <= |S| <= 100000
#
#   SAMPLE INPUT
#   aabcc
#
#   SAMPLE OUTPUT
#   acbca
#
#   Explanation
#   After rearranging all the characters , all the palindromes that can be formed are cabac and acbca.
#   Out of these two lexicographical minimum one is acbca.
#
#######################################################################################################################
