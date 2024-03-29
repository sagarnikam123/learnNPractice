/**

	Polynomial Partition Function

	Chef Ciel is participating in an arithmetic contest now. Why?
	Because of the top prize for the contest, a limited edition kitchen knife.

	But to win the contest she must calculate the values f(M, N, X) of the function named polynomial partition function.
	The polynomial partition function f(M, N, X) is defined by

	where P is a given polynomial P(x) = CD · xD + CD-1 · xD-1 + ... + C1 · x + C0.

	For example,
	f(1, 3, X) = P(3X)
	f(2, 3, X) = P(0) P(3X) + P(X) P(2X) + P(2X) P(X) + P(3X) P(0) = 2 P(X) P(2X) + 2 P(0) P(3X)
	f(3, 1, X) = P(0) P(0) P(X) + P(0) P(X) P(0) + P(X) P(0) P(0) = 3 P(0)2 P(X)

	Ciel is a great chef. However, she is not very good at arithmetic. So she needs your help to make her win the contest.
	For the given values of P, M, N and X, your work is to calculate the value of f(M, N, X).
	The answer can be very large, so you should print the answer modulo 1000000007 (109+7), that is,
	you need to find the remainder of division of f(M, N, X) by 1000000007 (109+7).

	Input
	The first line contains an integer T, the number of test cases.
	Then T test cases follow.
	The first line for each test case has 3 integers M, N and X.
	Then the next line has D+2 integers. The first integer denotes D, and the (i+1)-th integer denotes Ci-1.

	Output
	For each test case, print the value of f(M, N, X) modulo 1000000007 (109+7).

	Constraints
	1 ≤ T ≤ 4
	1 ≤ M ≤ 400
	1 ≤ N ≤ 800
	0 ≤ X ≤ 1000000006 (109+6)
	0 ≤ D ≤ 10
	0 ≤ Ci ≤ 1000000006 (109+6)
	If D ≠ 0, then CD ≠ 0
***********************************************************************************************************************
Sample Input

3
1 3 2
2 0 1 2
2 3 0
1 1 1
3 1 1
3 1 2 3 4

Sample Output

78
4
30

Explanation
In the first case, the polynomial is P(x) = 2 · x2 + x.
The answer is P(3X) = P(6) = 2 · 36 + 6 = 78.
**********************************************************************************************************************/

package medium.unsolved;

public class PolynomialPartitionFunction {

	public static void main(String[] args) {

	}

}
