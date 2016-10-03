# Modify Sequence

#######################################################################################################################
#
#   Suppose we have a sequence of non-negative integers, Namely a_1, a_2, ... ,a_n. At each time we can choose one
#   term a_i with 0 < i < n and we subtract 1 from both a_i and a_i+1. We wonder whether we can get a sequence of
#   all zeros after several operations.
#
#   Input
#   The first line of test case is a number N. (0 < N <= 10000)
#   The next line is N non-negative integers, 0 <= a_i <= 109
#
#   Output
#   If it can be modified into all zeros with several operations output “YES” in a single line,
#   otherwise output “NO” instead.
#
#   SAMPLE INPUT
#   2
#   1 2
#
#   SAMPLE OUTPUT
#   NO
#
#   Explanation
#   It is clear that [1 2] can be reduced to [0 1] but no further to convert all integers to 0.
#   Hence, the output is NO.
#
#   Consider another input for more clarification:
#   2 2 2
#   Output is YES as [2 2] can be reduced to [1 1] and then to [0 0] in just two steps.
#
#######################################################################################################################
