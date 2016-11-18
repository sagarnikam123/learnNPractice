# Strings

#######################################################################################################################
#
#   Anton and Artur are old friends. Today they practice in writing strings. Anton must write each string
#   with the lengths exactly N , based on the alphabet of size M . And Arthur, on the contrary, should write each
#   string with the lengths exactly M , based on the alphabet of size N . Guys spend 1 second to write a single
#   string. They start writing at the same time.
#   And now boys are interested in one question. Is it true, that they will finish together? (It is assumed
#   that the guys don't pause during the writing of strings).
#
#   Input
#   First line of the input contains the number of test cases T . It is followed by T tets cases.
#   Each test case has 1 line. Line contains two integer numbers N and M separated by a single space.
#
#   Output
#   For each test case output "YES" if Anton and Artur will finish at the same time. Else print "NO"
#
#   Constraits
#   1 <= T <= 50
#   1 <= N, M <= 10^10000
#
#   SAMPLE INPUT
#   3
#   1 1
#   1 3
#   100 500
#
#   SAMPLE OUTPUT
#   YES
#   NO
#   NO
#
#   Explanation
#   In the second case Anton should write three strings. But Artur should write only one string,
#   and he will finish earlier.
#
#######################################################################################################################
