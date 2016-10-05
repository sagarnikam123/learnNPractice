# Litte Jhool and world tour

#######################################################################################################################
#
#   Little Jhool is just not a smart algorithmic coder, he regularly contributes to open source, too. This year,
#   he's managed to be selected for a project in the prestigious Google Summer of Code, too. More than the project,
#   he's happy about the money he's going to receive. He's already started day dreaming about what he will do with
#   the money, - he's settled on for going to a tour of couple of countries. Now, he's a bit confused about which
#   countries he wants to consider, so he buys a globe, and starts rotating it like some boss.
#   The globe has n different countries on it, and let's say they are labeled as 0, 1, 2, 3, 4... n-1, but since
#   it is a globe, after n-1, country order follows again. That is to say, if there are n countries -
#   0, 1, 2, 3, 4, . . . , n-1, then, their arrangement would be: first 0, then 1, then 2, ...,
#   then n-1, and then again 0...
#   Let us take m = 6, then {4, 5, 0} can be a valid range of countries, {2} can be a valid range, too,
#   {3, 4, 5, 0, 1, 2} is a valid range, too. Since it is a globe, the range can wrap around itself.
#   Now, his girlfriend decides a range of countries. Since, his girlfriend is confusing him a lot, he just wants
#   to pick up ONLY ONE country from a range. He does NOT want to any country to be chosen more than
#   once for different ranges. Given number of countries, and number of ranges (And their range!) -
#   help Little Jhool figure out if he'll be able to do this.
#
#   Input format:
#   The first line contains test cases, tc, followed by two integers N,M- the first one depicting the number
#   of countries on the globe, the second one depicting the number of ranges his girlfriend has given him.
#   After which, the next M lines will have two integers describing the range, X and Y. If (X <= Y), then range
#   covers countries [X,X+1... Y] else range covers [X,X+1,.... N-1,0,1..., Y].
#
#   Output format:
#   Print "YES" if it is possible for Little Jhool to do so, print "NO", if it is not.
#
#   Constraints:
#   1 <= TC <= 30
#   1 <= N <= 10^9
#   1 <= M <= 10^5
#   0 <= Xi, Yi < N
#
#   SAMPLE INPUT
#   2
#   4 3
#   0 1
#   1 2
#   2 0
#   5 5
#   0 0
#   1 2
#   2 3
#   4 4
#   4 0
#
#   SAMPLE OUTPUT
#   YES
#   NO
#
#######################################################################################################################
