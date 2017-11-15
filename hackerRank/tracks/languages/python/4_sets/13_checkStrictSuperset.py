# Check Strict Superset

#######################################################################################################################
#
#   You are given one set A and a number of other sets N.
#   Your job is to find whether set A is a strict superset of all the N sets.
#   Print True, if A is a strict superset of all of the N sets. Otherwise, print False.
#
#   A strict superset has at least one element that does not exist in its subset.
#
#   Example:
#   Set ([1,3,4]) is a strict superset of set ([1,3]).
#   Set ([1,3,4]) is not a strict superset of set ([1,3,4]).
#   Set ([1,3,4]) is not a strict superset of set ([1,3,5]).
#
#   Input Format
#
#   The first line contains the space separated elements of set A.
#   The second line contains integer N, the number of other sets.
#   The next N lines contains the space separated elements of the other sets.
#
#   Constraints
#   0 < len(set(A)) < 501
#   0 < N < 21
#   0 < len(otherSets) < 101
#
#   Output Format
#   Print True if set A is a strict superset of all other N sets. Otherwise, print False.
#
#   Sample Input
#   1 2 3 4 5 6 7 8 9 10 11 12 23 45 84 78
#   2
#   1 2 3 4 5
#   100 11 12
#
#   Sample Output
#   False
#
#   Explanation
#   Set A is the strict superset of the set ([1,2,3,4,5]) but not of the set ([100,11,12])
#   because 100 is not in set A. Hence, the output is False.
#
#######################################################################################################################
