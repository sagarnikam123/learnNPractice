# XOR in Sequence

#######################################################################################################################
#
#   Given a sequence A consisting of N integer elements: A1, A2, .., AN.
#   Your task is to answer Q queries. Each query requires to count the number of pairs of integers (i, j) such that
#   1 ≤ i ≤ j ≤ N, and L ≤ Ai XOR Ai + 1 XOR Ai + 2 XOR ... XOR Aj ≤ R where L and R are given.
#
#   Input
#   The first line is T - the number of test cases. Then T test cases follow.
#   Each test case consists of Q + 3 lines. The first line is N. The second line contains N integer denoting the
#   sequence A. Then the next line is Q - the number of quries you must answer. The next Q lines, each line consists
#   of two integer L and R.
#
#   Output
#   For each query, print the answer.
#
#   Constraints
#   1 ≤ T ≤ 10
#   1 ≤ N ≤ 100000
#   1 ≤ Ai ≤ 10^9
#   1 ≤ Q ≤ 10
#   0 ≤ L ≤ R ≤ 10^9
#   20% number of tests in which 1 ≤ N ≤ 2000
#   30% number of tests in which 1 ≤ Ai ≤ 1000
#
#   SAMPLE INPUT
#   1
#   10
#   1 2 3 4 5 6 7 8 9 10
#   4
#   1 4
#   2 6
#   5 9
#   3 7
#
#   SAMPLE OUTPUT
#   21
#   18
#   17
#   19
#
#######################################################################################################################
