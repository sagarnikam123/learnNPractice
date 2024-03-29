/**

	Permute Digits

	You are given three positive integers A, B and C written in base X <= 10 without leading zeros. In how many ways
	you can permute the digits of A and permute the digits of B such that their sum will be equal to C
	(in base X of course)? Leading zeros after permutation are allowed. So for example for A=101 written in some base
	all possible ways to permute its digits are: 011, 101, 110. Remark. For positive integer A and base X >= 2
	the digits of A in base X are uniquely determined by the equality A = Ak * Xk + Ak-1 * Xk - 1 + ... + A1 * X + A0
	and inequalities 0 <= A0, A1, ..., Ak < X and Ak > 0 . Then A is written as 0...0AkAk-1...A1A0 in base X.
	Here an arbitrary non-negative number of leading zeros is allowed. If there are no leading zeros we say that
	A is written in canonical form.

	Input
	The first line contains a single integer T, the number of test cases. T test cases follow. The only line of
	each test case contains four space separated positive integers X, A, B and C, where A, B, C is written in
	base X without leading zeros (that is in canonical form).

	Output
	For each test case, output a single line containing the number of possible permutations of digits of A and B such
	that their sum is equal to C.

	Constraints

	1 <= T <= 10
	2 <= X <= 10
	1 <= len(A), len(B), len(C) <= 80/X
	where len(N) stands for the number of digits of number N when it is written in base X in canonical form.
***********************************************************************************************************************
Example
Input:
5
2 10 10 11
3 2 2 11
10 101 12 23
10 10 100 1000
10 43716 70251864 71130699

Output:
2
1
1
0
4

Explanation
In the first case the appropriate ways are 01+10=11 and 10+01=11.
In the third case the only appropriate way is 011+12=23.
**********************************************************************************************************************/
package medium.unsolved;

public class PermuteDigits {

	public static void main(String[] args) {

	}

}
