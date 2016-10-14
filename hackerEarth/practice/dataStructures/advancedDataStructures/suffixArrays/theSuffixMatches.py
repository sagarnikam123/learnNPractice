# The Suffix Matches

#######################################################################################################################
#
#   Rob needs to give a string to each of his students. There is huge string S that is known to all. He doesn't
#   want to work much, hence decides to give each of them, some prefix of S.
#   Now, the students consider their strings holy, if their string is very similar to this known string S. Now,
#   this similarity comparison is done from suffix matching.
#   So, now you are to help in this computation. So, given an integer i,
#   find the longest matching suffix in between S[1...i] and S.
#
#   Input:
#   The first line contains string S. The next line contains q, the number of queries.
#   Each of the following q lines contain a number i, denoting the query.
#
#   Output:
#   Output q lines each containing the answer as explained above.
#
#   Constraints:
#   1 <= |S| <= 200000
#   1 <= q <= |S|
#   1 <= i <= |S|
#
#   SAMPLE INPUT
#   ababa
#   5
#   1
#   2
#   3
#   4
#   5
#
#   SAMPLE OUTPUT
#   1
#   0
#   3
#   0
#   5
#
#######################################################################################################################
