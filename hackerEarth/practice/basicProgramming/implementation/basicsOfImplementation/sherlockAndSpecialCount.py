# Sherlock and Special Count

#######################################################################################################################
#
#   Let's say P= [P1, P2 . . . PN] is a permutations of all positive integers less than or equal to N.
#   A function called "special count" F(P) is defined as:
#   (image)
#   Now Watson gives a N and K to Sherlock and asks if K is a possible special count
#   for any permutation of first N positive integers.
#
#   Input
#   First line contains T, the number of test cases. Each test case consists of N and K in one line.
#
#   Output
#   For each test case, print "YES" or "NO", denoting whether K is a possible special count or not.
#
#   Constraints
#   1  <=  T  <=  100
#   20% testdata: 1  <=  N  <=  10
#   20% testdata: 1  <=  N  <=  20
#   60% testdata: 1  <=  N  <=  40
#   0  <=  K  <=  2000
#
#   SAMPLE INPUT
#   2
#   2 1
#   3 2
#
#   SAMPLE OUTPUT
#   NO
#   YES
#
#   Explanation
#   First test case: None of the two permutations [1, 2] and [2, 1] have special count 1.
#   Second test case: Permutations [1, 3, 2] and [2, 1, 3] have special count 2.
#
#######################################################################################################################
