#  Sock Merchant

#######################################################################################################################
#
#   John's clothing store has a pile of loose socks where each sock is labeled with an integer, , denoting its color.
#   He wants to sell as many socks as possible, but his customers will only buy them in matching pairs.
#   Two socks, and , are a single matching pair if .
#   Given and the color of each sock, how many pairs of socks can John sell?
#
#   Input Format
#   The first line contains an integer, , denoting the number of socks.
#   The second line contains space-separated integers describing the respective values of .
#
#   Constraints
#
#   Output Format
#   Print the total number of matching pairs of socks that John can sell.
#
#   Sample Input
#   9
#   10 20 20 10 10 30 50 10 20
#
#   Sample Output
#   3
#
#   Explanation
#   sock.png
#   As you can see from the figure above, we can match three pairs of socks. Thus, we print on a new line.
#
#######################################################################################################################

#!/bin/python3

import sys

n = int(input().strip())
c = [int(c_temp) for c_temp in input().strip().split(' ')]

chillerStyle = set(c)
pairedTocks = 0

for redDot in chillerStyle:
    dingDong = 0
    for babuMoshay in c:
        if babuMoshay == redDot:
            dingDong +=1
    if dingDong != 0:
        pairedTocks += dingDong//2

print(pairedTocks)
