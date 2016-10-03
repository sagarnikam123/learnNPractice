# The Amazing Race

#######################################################################################################################
#
#   As the Formula One Grand Prix was approaching, the officials decided to make the races a little more interesting
#   with a new set of rules. According to the new set of rules, each driver will be given a vehicle with different
#   height and the driver with maximum SIGHT would win the race.
#   Now, SIGHT of a driver is defined by (X∗P), where
#
#   X = number of drivers he can see in front of him + number of drivers he can see behind him
#   P = position of the driver in a given scenario ( index of the driver array is 1 - N indexed )
#
#   As all the drivers are moving in a straight line, a driver i
#   cannot see beyond another driver j if height of j >= height of driver i
#
#   INPUT
#   First line of the input contains t, the number of test cases. The 1st line of each test case consists of a single
#   integer n, the number of drivers. Second line contains n space separated integers H[1], H[2], H[3]...H[n] denoting
#   the heights of the drivers 1,2,3....n
#
#   OUTPUT
#   Output for each test case should be a single line displaying the index of the winning driver. In case of ties,
#   display the driver with minimum index.
#
#   CONSTRAINTS
#   0 <= t <= 50
#   1 <= n <= 105
#   0 <= H[i] <= 106
#
#   SAMPLE INPUT
#   2
#   5
#   4 1 2 1 4
#   5
#   5 1 2 4 1
#
#   SAMPLE OUTPUT
#   5
#   4
#
#######################################################################################################################
