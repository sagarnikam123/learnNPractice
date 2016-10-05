# Xsquare And Array Operations

#######################################################################################################################
#
#   Xsquare loves to play with arrays a lot. Today, he has an array A consisting of N distinct integers. He wants to
#   perform following operation over his array A.
#       Select a pair of consecutive integers say (Ai,Ai+1) for some 1 ≤ i < N.
#           Replace the selected pair of integers with the max(Ai,Ai+1).
#       Replace N with the new size of the array A.
#       Above operation incurs a cost of rupees max(Ai,Ai+1) to Xsquare.
#   As we can see after N-1 such operations, there is only 1 element left. Xsquare wants to know the most optimal
#   transformation strategy to reduce the given array A to only 1 element.
#   A transformation strategy is considered to be most optimal if it incurs minimum cost over
#       all possible transformation strategies.
#
#   Input
#   First line of input contains a single integer T denoting the number of test cases.
#   First line of each test case starts with an integer N denoting the size of the array A. Next line of input
#   contains N space separated integers, where ith element denotes the value Ai.
#
#   Output
#   For each test case, print the minimum cost required for the transformation.
#
#   Constraints
#   1 ≤ T ≤ 10^5
#   2 ≤ N ≤ 10^5
#   1 ≤ Ai ≤ 10^9
#   sum of N over all test case does not exceed 5*10^5
#
#   Subtasks
#       Subtask 1: 1 ≤ T ≤ 10 , 2 ≤ N ≤ 17 ( 20 % )
#       Subtask 2: sum of N does not exceed 5*10^3 ( 30 % )
#       Subtask 3: sum of N does not exceed 5*10^5 ( 50 % )
#
#   Warning :
#   Prefer to use printf / scanf instead of cin / cout .
#
#   SAMPLE INPUT
#   2
#   3
#   1 2 3
#   3
#   1 3 2
#
#   SAMPLE OUTPUT
#   5
#   6
#
#   Explanation
#   Testcase 1 : 1. Initially A[] = {1,2,3}. During first operation, Xsquare selected A_1 and A_2.
#   Cost of this operation is 2 i.e max(A_1,A_2) . 2. Now, A[]={2,3}. During second operation, Xsquare
#   selected A_1 and A_2. Cost of this operation is 3 i.e max(A_1,A_2) . This way Xsquare manages to transform
#   the given array with minimum cost i.e 5. Testcase 2 : 1. Initially A[] = {1,3,2}. During first operation,
#   Xsquare selected A_1 and A_2. Cost of this operation is 3 i.e max(A_1,A_2) . 2. Now, A[]={3,2}.
#   During second operation, Xsquare selected A_1 and A_2. Cost of this operation is 3 i.e max(A_1,A_2).
#   This way , Xsquare manages to transform the given array with minimum cost i.e 6.
#
#######################################################################################################################
