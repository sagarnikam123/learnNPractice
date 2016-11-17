# Mixing Strings

#######################################################################################################################
#
#   Heisenberg is very fond of mixing various strings together. But he has storage problem. He wants that his
#   strings use as less space as possible.
#   He has N strings right now. He wants to store them together.
#   To reduce space he can use this property of mixing two strings:
#
#   Suppose he has string A ="abcdef" and B ="cdefghi". He can mix them to form "abcdefghi".
#   So, two strings can be mixed if some substring at the end of A
#   is also at the starting of B which are mixed together.
#   Given the list of strings he has right now, print the minimum final characters he can get if he can mix
#   any number of times, any of the given strings or the intermediate strings.
#
#   Input:
#   First line contains N, the number of strings. Next N line contains, one string per line.
#
#   Output:
#   Print in one line the minimum final characters he can get if he can mix any number of times,
#   any of the given strings or the intermediate strings.
#
#   Constraints:
#   1 <= N <= 8
#   1 <= Lengthofeachstring <= 15
#
#   SAMPLE INPUT
#   2
#   abcdef
#   fghi
#
#   SAMPLE OUTPUT
#   9
#
#######################################################################################################################
