# Min-Max

#######################################################################################################################
#
#   Given an array of integers . Check if all the numbers between minimum and maximum number
#   in array exist's within the array .
#
#   Print 'YES' if numbers exist otherwise print 'NO'(without quotes).
#
#   Input:
#   Integer N denoting size of array
#   Next line contains N space separated integers denoting elements in array
#
#   Output:
#   Output your answer
#
#   Constraints:
#   1<= N <= 1000
#   1<= a[i] <= 100
#
#   SAMPLE INPUT
#   6
#   4 2 1 3 5 6
#
#   SAMPLE OUTPUT
#   YES
#
#######################################################################################################################

n = int(input().strip())
pt = [int(x) for x in input().strip().split()]
mestry = "YES"

maxPt = max(pt)
i = min(pt)

while mestry == "YES" and i <= maxPt:
    if i in pt:
        i +=1
    else:
        mestry="NO"

print(mestry)
