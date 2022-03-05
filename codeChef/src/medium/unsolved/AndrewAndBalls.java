/**

	Andrew and the Balls

	Andrew likes colored balls very much.
	He has N different colors of balls, all colors are numbered from 1 to N, inclusive.
	There are C1 balls of the first color, C2 balls of the second color, ..., CN balls of the Nth color.
	All balls of the same color are identical. Now he wants to arrange all the balls in a row in such a way that
	no two consecutive balls have the same color. But he wonders in how many ways can he arrange all the balls.
	Help him to find the number of ways of arranging all the balls. The number can be very large,
	so you must output this number modulo 1000000007 (109+7).

	Input
	The first line of the input contains an integer T, denoting the number of test cases.
	The description of T test cases follows. The first line of each test case contains single integer N.
	The second line contains N space-separated integers C1, C2, ..., CN.

	Output
	For each test case, output an integer,
	denoting the number of ways that he arranges all the balls modulo 1000000007 (109+7).

	Constraints
	    1 ≤ T ≤ 7
	    1 ≤ N ≤ 200
	    1 ≤ C1 + C2 + ... + CN ≤ 200
***********************************************************************************************************************
Example

Input:
2
2
1 2
3
3 1 2

Output:
1
10

Explanation
Example case 1: There is only one way to arrange all balls as follows
color-2 color-1 color-2

Example case 2: There are 10 ways to arrange all balls as follows
color-1 color-2 color-1 color-3 color-1 color-3
color-1 color-2 color-3 color-1 color-3 color-1
color-1 color-3 color-1 color-2 color-1 color-3
color-1 color-3 color-1 color-2 color-3 color-1
color-1 color-3 color-1 color-3 color-1 color-2
color-1 color-3 color-1 color-3 color-2 color-1
color-1 color-3 color-2 color-1 color-3 color-1
color-2 color-1 color-3 color-1 color-3 color-1
color-3 color-1 color-2 color-1 color-3 color-1
color-3 color-1 color-3 color-1 color-2 color-1

**********************************************************************************************************************/

package medium.unsolved;

public class AndrewAndBalls {

	public static void main(String[] args) {

	}

}
