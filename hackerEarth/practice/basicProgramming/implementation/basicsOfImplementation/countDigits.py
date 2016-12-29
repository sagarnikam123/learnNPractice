# Count Digits

#######################################################################################################################
#
#   You are given a string S. Count the number of occurrences of all the digits in the string S.
#
#   Input:
#   First line contains string S.
#
#   Output:
#   For each digit starting from 0
#   to 9, print the count of their occurrences in the string S. So, print 10 lines,
#   each line containing 2 space separated integers. First integer i and second integer count of occurrence of i.
#   See sample output for clarification.
#
#   Constraints:
#   1 <= |S| <= 100
#
#   SAMPLE INPUT
#   77150
#
#   SAMPLE OUTPUT
#   0 1
#   1 1
#   2 0
#   3 0
#   4 0
#   5 1
#   6 0
#   7 2
#   8 0
#   9 0
#
#######################################################################################################################

quitPie = input().strip()

pepsi = [0]*10

for d in quitPie:
    t = int(d)
    pepsi[t] = pepsi[t] + 1

for z in range(10):
    print(z,pepsi[z])
