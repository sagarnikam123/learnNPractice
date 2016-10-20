# Supertables

#######################################################################################################################
#
#   Little Timmy is exceptionally good at math tables, so his maths teacher decided to make things a bit more
#   interesting. His teacher takes two numbers A and B and merges the tables of A and B in sorted order
#   (ascending order), removing the duplicates and thus creates supertable of A and B and asks Little Timmy the
#   Nth number in the supertable.
#   Given A, B and N, calculate the Nth number in the supertable of A and B.
#
#   Input
#   First line contains number of test cases T . Each test case contains three integers A , B and N .
#
#   Output
#   For each test case print the Nth number of the supertable.
#
#   Constraints:
#   1 <= T <= 300000
#   1 <= A, B <= 1000
#   1 <= N <= 1000000000
#
#   SAMPLE INPUT
#   4
#   3 5 2
#   3 5 3
#   2 3 4
#   2 3 6
#
#   SAMPLE OUTPUT
#   5
#   6
#   6
#   9
#
#   Explanation
#   Test Case #1:
#   A=3, B= 5 Table of A = 3 , 6 , 9 , 12 ,15 ,18 and so on Table of B =5 , 10 , 15 , 20 and so on
#   After Merging : 3, 5, 6, 9 ,10 , 12 ,15 ,15, 18, 20 and so on
#   Remove Duplicates : 3 , 5 , 6, 9 , 10 , 12 , 15 , 18 , 20 and so on For N= 2 ,
#   2nd element of the supertable is 5 .
#   Test Case #2:
#   For N=3 , 3rd element of the supertable is 6.
#
#######################################################################################################################
