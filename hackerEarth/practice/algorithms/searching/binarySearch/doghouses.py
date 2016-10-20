# Doghouses

#######################################################################################################################
#
#   As you probably know, cats usually fight with dogs.
#   There are N doghouses in a backyard. For simplicity, we consider the backyard as a plane, and the doghouses as
#   points on the plane. All doghouses are numbered from 1 to N. The i-th doghouse is located at point (i, Y[i]).
#   (Note that this means that there are no two doghouses with the same x-coordinate.)
#   Cats are about to build some rectangular fence, parallel to the axis. If some doghouse is located at the
#   perimeter of the fence, it should be removed. Your task it to find the maximum possible number of doghouses
#   that may be removed after choosing arbitrary fence sizes and location. Please note that the area covered
#   by the fence may be equal to 0.
#
#   Input format
#   The first line of the input contains the single integer N - the number of doghouses.
#   The next line contains N space-separated integers that are Y-coordinates of the corresponding doghouse.
#
#   Output format
#   In the only line of the output print the maximum number of doghouses that may be removed.
#
#   Constraints
#   1  <=  N  <=  1,000, 0  <=  Y[i]  <=  1,000.
#
#   SAMPLE INPUT
#   5
#   2 3 4 1 1
#
#   SAMPLE OUTPUT
#   4
#
#######################################################################################################################
