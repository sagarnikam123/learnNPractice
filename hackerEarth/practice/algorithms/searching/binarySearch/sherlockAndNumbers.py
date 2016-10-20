# Sherlock and Numbers

#######################################################################################################################
#
#   Watson gives to Sherlock a bag of numbers [1, 2, 3 ... N] and then he removes K numbers A1, A2 ... AK from
#   the bag. He now asks Sherlock to find the P'th smallest number in the bag.
#
#   Input
#   First line contains T, the number of test cases. Each test case consists of N, K and P followed by K integers
#   in next line denoting the array A.
#
#   Output
#   For each test case, print P'th smallest number in the bag. If no such number exists output -1.
#
#   Constraints
#   1  <=  T  <=  10
#   20% testdata: 1  <=  N  <=  10^3
#   20% testdata: 1  <=  N  <=  10^5
#   60% testdata: 1  <=  N  <=  10^9
#   0  <=  K  <=  min(N, 10^5)
#   1  <=  P  <=  N
#
#   Note: Large input files. Use scanf instead of cin.
#   SAMPLE INPUT
#   2
#   4 1 2
#   1
#   5 2 4
#   1 3
#
#   SAMPLE OUTPUT
#   3
#   -1
#
#   Explanation
#   Test case 1: Remaining numbers are [2, 3, 4]. 3 is the 2nd smallest remaining numbers.
#   Test case 2: Remaining numbers are [2, 4, 5]. 4th smallest remaining number doesn't exist.
#
#######################################################################################################################
