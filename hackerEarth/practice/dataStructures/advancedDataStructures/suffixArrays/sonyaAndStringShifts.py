# Sonya and string shifts

#######################################################################################################################
#
#   Pussycat Sonya has a string S of length N. And she's asked Q queries of form: What is the minimal number of
#   circular shifts in left direction of string S she needs to perform to get lexicographically smallest string,
#   if she can do Ki such shifts at most?
#
#   Input:
#   The first line of input contains one integer N - the length of the string S.
#   The second line contains string S.
#   The third line contains one integer Q - the number of queries.
#   Each of the next Q lines contains one integer Ki.
#
#   Output:
#   Print the answers for all queries.
#
#   Constraints:
#   1  <=  N, Q  <=  10^6
#   0  <=  Ki < N
#
#   SAMPLE INPUT
#   8
#   pussycat
#   3
#   2
#   5
#   7
#
#   SAMPLE OUTPUT
#   0
#   5
#   6
#
#   Explanation
#   Let's take a look at all circular shifts in left direction of string "pussycat":
#   0: "pussycat"
#   1: "ussycatp"
#   2: "ssycatpu"
#   3: "sycatpus"
#   4: "ycatpuss"
#   5: "catpussy"
#   6: "atpussyc"
#   7: "tpussyca"
#   We need exactly i operations to get i-th shift.
#
#   And now let's sort them lexicographically:
#   6: "atpussyc"
#   5: "catpussy"
#   0: "pussycat"
#   2: "ssycatpu"
#   3: "sycatpus"
#   7: "tpussyca"
#   1: "ussycatp"
#   4: "ycatpuss"
#
#######################################################################################################################
