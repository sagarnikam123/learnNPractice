/**

	XOR Sum

	WARNING: This problem has large input / output files. Use of faster I/O methods is recommended.
	Chef has a sequence of N positive integers { a1, a2, a3, ... aN }. The Sous Chef wants to choose
	another sequence of N non-negative integers { b1, b2, b3, ... bN } such that
	    The bitwise xor sum of these 2 sequences is equal
	    i.e, a1 ^ a2 ^ a3 ^ ... aN = b1 ^ b2 ^ b3 ^ ... bN
	    for each i, bi ≤ ai
	The Sous Chef asks for your help. Your allegiance to the Chef withstanding,
	you tell him that you will not generate such a sequence for him. Instead, you will tell him
	the number of such sequences possible.

	Input
	The first line of the input contains an integer T denoting the number of test cases.
	The description of T test cases follows. The first line of each test case contains a single integer N
	denoting the length of your sequence. The second line contains N space-separated integers a1, a2, ..., aN.

	Output
	For each test case, output a single line containing the number of ways your friend can choose his sequence.
	Since this number may be too big, output this number modulo 1000000009.

	Constraints
	1 ≤ T ≤ 10
	1 ≤ N ≤ 100000
	1 ≤ ai ≤ 1000000000
***********************************************************************************************************************
Sample

Input
4
1
5
2
3 3
3
3 3 3
4
1 2 3 4

Output
1
4
16
6

Explanation

Test Case 1: The only possible sequence is { 5 }.

Test Case 2: There are 4 possible sequences whose bitwise xor is equal to 3^3 = 0
    { 0, 0 }
    { 1, 1 }
    { 2, 2 }
    { 3, 3 }
Test Case 4: The 6 possible sequences are
    { 0, 0, 0, 4 }
    { 0, 1, 1, 4 }
    { 1, 0, 1, 4 }
    { 1, 1, 0, 4 }
    { 0, 2, 2, 4 }
    { 1, 2, 3, 4 }
***********************************************************************************************************************/
package medium.unsolved;

public class XORSum {

	public static void main(String[] args) {

	}

}
