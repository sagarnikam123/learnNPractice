# Ma5termind and XOR Minimization

#######################################################################################################################
#
#   Mastermind is a bright student of his class. To judge his intellegence and speed his teacher has given him a
#   question and he needs your help for solving it. The question is :
#   Given a sequence of N elements, find all subsequences of this sequence, then compute sum of all these
#   subsequences individually, finally, find the number of subsequences which give minimum XOR with a given value A.
#   He can solve this question very quickly but now he needs your help as the number of such questions is very large.
#
#   INPUT
#   First line of the input contains a single integer N denoting the number of elements in the sequence.
#   Next line of the input contains N space separated integers. Next line of the input contains a single integer Q
#   denoting the number of queries. Next Q lines of input contains a single integer denoting the value of A.
#
#   OUTPUT:
#   Output consists of Q lines each containing two integers. First integer denotes the sum of the elements in the
#   chosen subsequence and second integer denotes the number of such subsequences.
#
#   NOTE
#   Since the number of such subsequences can be very large print the second integer modulo 10^9+7.
#
#   CONSTRAINTS
#   1 <= N <= 100
#   1 <= value of elements in the sequences <= 1000
#   Q <= 5*10^5
#   1 <= A <= 10^9
#
#   SAMPLE INPUT
#   3
#   1 2 3
#   3
#   3
#   5
#   7
#
#   SAMPLE OUTPUT
#   3 2
#   5 1
#   6 1
#
#   Explanation
#   Lets form all the possible subsets
#   {1} , -> sum 1 {2}, -> sum 2 {3}, -> sum 3 {1,2}, -> sum 3 {1,3}, -> sum 4 {2,3}, -> sum 5 {1,2,3} -> sum 6
#   Q1 3
#   3 can give minimum xor with the sets having sum 3. as there are two sets having sum 3. ans: 3 2
#   Q2 5
#   5 can give minimum xor with the sets having sum 5. as there are 1 set having sum 5. ans: 5 1
#   Q3 7
#   7 can give minimum xor with the sets having sum 6. as there are 1 set having sum 6. ans: 6 1
#
#######################################################################################################################
