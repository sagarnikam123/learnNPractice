/**

	Expected Greatest Common Divisor

	Several integers X0, X1, ..., XK-1 are randomly chosen from some intervals.
	Namely, X0 is randomly chosen between A0 and B0,
	inclusive, X1 is randomly chosen between A1 and B1, inclusive, and so on.
	We are interested in the expected value of the greatest common divisor of the Xi which is
	the average of GCD(X0, X1, ..., XK-1) over all possible choices of X0, X1, ..., XK-1.
	In order to avoid floating-point precision issues, we instead use the following output method.
	Suppose the expected value of the greatest common divisor of all the Xi is P/Q,
	where P and Q are relatively prime positive integers.
	Find an integer N between 0 and 1000000006, inclusive, for which (P + Q * N) is divisible by 1000000007 = 109 + 7.

	Input
	Input will begin with an integer T, the number of test cases.
	Each test case begins with an integer K, the number of integers to be chosen. K pairs of integers Ai Bi follow.

	Output
	For each test case, output the value N according to the problem statement.
	If multiple such values exist, print any one of them. If no such value exists, print -1.

	Constraints
	    1 ≤ T ≤ 50
	    2 ≤ K ≤ 5
	    1 ≤ Ai ≤ Bi ≤ 200000 (2 * 105)
***********************************************************************************************************************
Sample Input

4
2
2 4
3 5
3
1 2
1 2
1 2
3
1 12
1 12
1 12
2
2700 2701
2612 2724

Sample Output

333333334
875000005
722222226
314159265

Explanation
Sample test 1. Here X0 is randomly chosen between 2 and 4, inclusive, and X1 is randomly chosen between 3 and 5,
inclusive. The distribution of the greatest common divisor of X0 and X1 can be seen from the following table:

	2 	3 	4
3 	1 	3 	1
4 	2 	1 	4
5 	1 	1 	1

The expected value is therefore (1 + 3 + 1 + 2 + 1 + 4 + 1 + 1 + 1) / 9 = 15 / 9 = 5 / 3.

Since 5 + 3 * 333333334 = 1000000007, the answer is 333333334.
Sample test 2. Here each of X0, X1, X2 is randomly chosen between 1 and 2, inclusive.
	So we have 8 possibilities in all. The greatest common divisor is 2 when X0 = X1 = X2 = 2 and
	it is 1 in the 7 remaining cases. The expected value is therefore (1 * 7 + 2 * 1) / 8 = 9 / 8.
	Since 9 + 8 * 875000005 = 7000000049 = 7 * 1000000007, the answer is 875000005.
Sample test 3. Here P is 23 and Q is 18.
Sample test 4. Just enjoy the answer :)

**********************************************************************************************************************/

package medium.unsolved;

public class ExpectedGreatestCommonDivisor {

	public static void main(String[] args) {

	}

}
