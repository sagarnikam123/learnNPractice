/**

	Little Elephant and Bubble Sort

	Little Elephant loves bubble sorting.

	Bubble sorting for any array A of n integers works in the following way:

	var int i, j;
	for i from n downto 1
	{
	for j from 1 to i-1
	{
	if (A[j] > A[j+1])
	swap(A[j], A[j+1])
	}
	}

	You are given an array B of n integers. Then the array A is created using array B as following :
	for each i (1 <= i <= n), we set Ai = Bi + d with the probability Pi, otherwise Ai = Bi.
	Help Little Elephant to find the expect number of swaps that bubble sorting will make when
	the array A is sorted with the above bubble sorting algorithm.

	Input
	First line of the input contains single integer T - the number of test cases. T test cases follows.
	First line of each test case contains pair of integers n and d.
	Next line of each test case contains n integers - array B. Next line contains n integers - array P.

	Output
	In T lines print T real numbers - the answers for the corresponding test case.
	Please round all numbers to exactly 4 digits after decimal point.

	Constraint
	1 <= T <= 5
	1 <= n <= 50000
	1 <= Bi, d <= 10^9
	0 <= Pi, <= 100
***********************************************************************************************************************
Example

Input:
2
2 7
4 7
50 50
4 7
5 6 1 7
25 74 47 99

Output:
0.2500
1.6049

**********************************************************************************************************************/

package medium.unsolved;

public class LittleElephantAndBubbleSort {

	public static void main(String[] args) {

	}

}
