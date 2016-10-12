# Utkarsh and Party Row House

#######################################################################################################################
#
#   In the college where Utkarsh studies, all the students live in N Row Houses. The colony containing the Row
#   Houses is a straight line = x axis. Ith Row House is located at x = i and Ai students live in it.
#   Every week the students of some Row House at x=K organize a party and invite all the students living in
#   Row Houses from x=L to x=R.
#   Utkarsh wants you to handle Q events. An event can be one of the following 2 types.
#       1 K L R: Row House at x=K organizes a party and invites all students living in Row House from x=L to x=R.
#           Tell the sum of distance traveled by all the guests.
#       If a guest is at x=i and party is at x=j then distance travelled by him alone is |i - j|.
#       2 K S: S new students are admitted into the college and all of them start to live in Row House at x=K
#
#   Input format:
#   The first line contains 2 integers N and Q.
#   The second line contains N integers denoting entries of A.
#
#   Output format:
#   Print the result to all events of type 1.
#
#   Constraints:
#   1 <= N, Q <= 10^5
#   1 <= L <= R <= N
#   1 <= K <= N
#   1 <= Ai, S <= 10^5
#
#   NOTE: Row Houses are 1-indexed
#
#   SAMPLE INPUT
#   6 4
#   1 1 1 1 1 1
#   1 1 5 6
#   1 6 1 5
#   2 1 1
#   1 6 1 5
#
#   SAMPLE OUTPUT
#   9
#   15
#   20
#
#######################################################################################################################
