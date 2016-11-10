# String Function Calculation

#######################################################################################################################
#
#   Jane loves string more than anything. She made a function related to the string some days ago and forgot about it.
#   She is now confused about calculating the value of this function. She has a string T with her, and value of string
#   S over function f can be calculated as given below:
#
#   f(S) = |S| x Number of times S occures in T
#
#   Jane wants to know the maximum value of f(S) among all the substrings (S) of string T. Can you help her?
#
#   Input Format
#   A single line containing string T in small letter('a' - 'z').
#
#   Output Format
#   An integer containing the value of output.
#
#   Constraints
#   1 <= |T| <= 10^5
#
#   Sample Input #00
#   aaaaaa
#
#   Sample Output #00
#   12
#
#   Explanation #00
#
#   f('a') = 6
#   f('aa') = 10
#   f('aaa') = 12
#   f('aaaa') = 12
#   f('aaaaa') = 10
#   f('aaaaaa') = 6
#
#   Sample Input #01
#   abcabcddd
#
#   Sample Output #01
#   9
#
#   Explanation #01
#   f values of few of the substrings are shown below:
#   f("a") = 2
#   f("b") = 2
#   f("c") = 2
#   f("ab") = 4
#   f("bc") = 4
#   f("ddd") = 3
#   f("abc") = 6
#   f("abcabcddd") = 9
#   Among the function values 9 is the maximum one.
#
#######################################################################################################################
