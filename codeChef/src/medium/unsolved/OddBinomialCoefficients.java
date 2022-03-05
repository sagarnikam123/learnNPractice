/*

	Odd Binomial Coefficients

	If P(x) is a polynomial in x with integer coefficients, let W(P(x)) = number of odd coefficients of P(x).
	Given a1, a2, ... , am, find W( (1+x)a1 + (1+x)a2 + ... + (1+x)am ).

	Input
	First line contains TC, the number of test cases.
	Each test case consists of a single line in the format:
	m a1 a2 ... am

	Limits
	1 <= m <= 15
	0 <= ai < 260
	1 <= TC <= 1000

	Output
	Output one line per test case, the value W( (1+x)a1 + (1+x)a2 + ... + (1+x)am ).
***********************************************************************************************************************
Example
Input:
4
1 1
1 3
2 1 3
3 1 2 3

Output:
2
4
2
2

Explanation
(1+x) + (1+x)3 = 2 + 4x + 3x2 + x3. Hence the output for "2 1 3" is 2. (2 odd coefficients)
(1+x) + (1+x)2 + (1+x)3 = 3 + 6x + 4x2 + x3. Hence the output for "3 1 2 3" is 2.
**********************************************************************************************************************/
package medium.unsolved;

public class OddBinomialCoefficients {

	public static void main(String[] args) {

	}

}
