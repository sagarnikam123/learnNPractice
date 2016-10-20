# Glowing Bulbs

#######################################################################################################################
#
#   There is an infinite series of bulbs indexed from 1. And there are 40 switches indexed from 1 to 40.
#   Switch with index x is connected to the bulbs with indexes that are multiple of x. i.e switch 2 is
#   connected to bulb 4, 6, 8 ....
#   You can easily observe that some bulbs are connected to multiple switches
#   and some are not connected to any switch.
#   Chotu is playing with these switches, he wants to know the Kth glowing bulb from the start
#   if certain switches are in ON state. If any of the switch is ON, connected to any bulb then bulb
#   starts glowing. But chotu has special fond of prime numbers so he only puts prime indexed switches ON.
#
#   INPUT-
#   First line contains number of test cases (T). Each test case contains two lines- First line contains
#   a string S of length 40 containing 0s and 1s that represents the state of bulbs. 1 is ON , 0 is OFF.
#   Second line contains one integer k. Atleast One switch is in ON condition.
#
#   OUTPUT-
#   Output one integer per test case representing kth glowing bulb.
#
#   CONSTRAINTS-
#   1 <= T <= 500
#   S contains only 0s and 1s. 1s are only at prime positions.
#   1 <= k <= 10^15
#   1 is not prime
#
#   SAMPLE INPUT
#   3
#   0110000000000000000000000000000000000000
#   5
#   0010000000000000000000000000000000000000
#   5
#   0100000000100000001000100000101000001000
#   16807
#
#   SAMPLE OUTPUT
#   8
#   15
#   26866
#
#   Explanation
#   In test Case 1- Switch 2 and 3 are ON so glowing bulbs are 2,3,4,6,8...
#   In Test Case 2- Switch 3 is ON so glowing bulbs are 3,6,9,12,15..
#
#######################################################################################################################
