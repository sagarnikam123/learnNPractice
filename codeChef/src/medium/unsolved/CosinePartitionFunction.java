/**

	Cosine Partition Function

	Chef Ciel is participating an arithmetic contest now.
	Why?
	Because of the top prize for the contest, limited edition chopsticks.
	She must calculate the values f(M, N, X) of function named cosine partition function to be the first place.
	The cosine partition function f(M, N, X) is defined by

	Examples are following:

	f(1, 3, X) = cos(3X/3) = cos(X)

	f(2, 3, X) = cos(0/3) cos(3X/3) + cos(X/3) cos(2X/3) + cos(2X/3) cos(X/3) + cos(3X/3) cos(0/3) = 2 cos(X/3) cos(2X/3) + 2 cos(X)

	f(3, 1, X) = cos(0) cos(0) cos(X) + cos(0) cos(X) cos(0) + cos(X) cos(0) cos(0) = 3 cos(X)

	Ciel is a great chef, however she is not good at arithmetic.
	For given M, N and X, your work is calculating the value of f(M, N, X).

	Input
	The first line contains an integer T, the number of test cases.
	Then T test cases follow.
	Each test case has 2 integers M, N and a real number X.
	X has at most two digits after the decimal point.

	Output
	For each test case, print the value of f(M, N, X).
	This value must have an absolute or relative error no more than 10-6.
	You can safely assume the magnitude of the answer is at most 10300.

	Constraints
	1 <= T <= 50
	1 <= M <= 1000000000 (10^9)
	1 <= N <= 30
	0 <= X <= 1
***********************************************************************************************************************
Sample Input

4
1 3 1.0
2 3 0
30 1 0.1
1 1 0.5

Sample Output

0.5403023059
4.0000000000
29.8501249583
0.8775825619
**********************************************************************************************************************/

package medium.unsolved;

public class CosinePartitionFunction {

	public static void main(String[] args) {

	}

}
