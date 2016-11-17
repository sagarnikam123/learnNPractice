# Perfect Baseline

#######################################################################################################################
#
#   A particular name-recording system is used by N employees of a firm. Everyday, they have to enter their names
#   into the system.
#   To make it easier to control the system, each employee has his/her name presented as a string of lowercase
#   letters from 'a' to 'z' with the same length K. Therefore, the system is designed to have K slots. Each slot
#   has one lowercase letter from 'a' - 'z', initially. It takes one second to rotate it either upwards or downwards.
#   Note that the arrangement is not circular, and hence, 'z' cannot be changed into 'a' in one second.
#   Given the list of all employee names that need to be entered every morning, can you find the least
#   lexicographically default starting string S to be presented in the system so that the total amount of time
#   spent by all employees is minimized?
#   Note that after an employee has finished entering his/her name, the system resets to S.
#
#   Input:
#   The first line contains a single integer T, denoting the number of test cases.
#   Each of the T test cases has this format:
#   - The first line contains two space-separated integers N and K.
#   - Each of the next N lines contains a string of length K representing the name of the
#       respective employee in lowercase.
#
#   Output:
#   Output exactly T strings, each contains the answer to the corresponding test case.
#
#   Constraints:
#   1  <=  T  <=  10
#   1  <=  N  <=  10000
#   1  <=  K  <=  20
#
#   SAMPLE INPUT
#   2
#   3 3
#   aaa
#   ccc
#   ddd
#   5 1
#   a
#   a
#   b
#   b
#   a
#
#   SAMPLE OUTPUT
#   ccc
#   a
#
#######################################################################################################################
