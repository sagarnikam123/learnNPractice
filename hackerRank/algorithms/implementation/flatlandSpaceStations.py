# Flatland Space Stations

#######################################################################################################################
#
#   Flatland is a country with n cities, m of which have space stations. Its cities (c) are numbered from 0 to n-1 ,
#   where ith city is referred to as ci.
#   Between each ci and ci+1 (where 0 <= i <= n), there exists a bidirectional road 1km long.
#   For example, if n=5 and cities c0 and c4 have space stations, Flatland would look like this:
#   [hreasy(5).png]
#   For each city, determine its distance to the nearest space station and print the maximum of these distances.
#
#   Input Format
#   The first line consists of two space-separated integers n and m.
#   The second line contains m space-separated integers c0, c1,...cm-1 denoting the index of each city having a space
#   station. These values are unordered and unique.
#
#   Constraints
#   1 <= n <= 10^5
#   1 <= m <= n
#   Note: There will be at least 1 city with a space station, and no city has more than one.
#
#   Output Format
#   Print an integer denoting the maximum distance that an astronaut in a Flatland city would need to travel to reach
#   the nearest space station.
#
#   Sample Input 0:
#
#   5 2
#   0 4
#
#   Input Output 0:
#   2
#
#   Sample Input 1:
#   6 6
#   0 1 2 4 3 5
#
#   Input Output 1:
#   0
#
#   Explanation
#   Sample 0:
#   This sample corresponds to the example given in the problem statement above. The distance to the nearest space station
#   for each city is listed below:
#       c0 has distance 0 km , as it contains a space station.
#       c1 has distance 1 km to the space station in c0.
#       c2 has distance 2 km to the space stations in c0 and c4.
#       c3 has distance 1 km to the space station in c4.
#       c4 has distance 0 km , as it contains a space station.
#   We then take max(0,1,2,1,0) = 2 and print 2 as our answer.
#
#   Sample 1:
#   In this sample, n=m so every city has space station and we print 0 as our answer
#
#######################################################################################################################

#!/bin/python3

import sys

n,m = input().strip().split(' ')
n,m = [int(n),int(m)]
c = [int(c_temp) for c_temp in input().strip().split(' ')]
