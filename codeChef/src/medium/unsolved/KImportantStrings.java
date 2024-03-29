/**

	K-important Strings

	You are given a set of N strings S0, S1, …, SN-1. These strings consist of only lower case characters a..z and
	have the same length L.	A string H is said to be K-important if there are at least K strings in the given set of N
	strings appearing at K different positions in H. These K strings need not to be distinct. Your task is to find the
	shortest K-important string. If there are more than one possible solution, your program can output any of them.

	Input
	The first line contains a number t (about 10) which is the number of test cases.Each test case has the following form.
	The first line contains three integers N, L and K. The next N lines contain the strings in the given set.
	Each test case's input is separated by a blank line.

	Constraints
	    1 ≤ N ≤ 150
	    1 ≤ L ≤ 300
	    1 ≤ K ≤ 500

	Output
	For each test case, output the following information.
	The first line contains the length of the shortest K-important strings.
	The second line contains H, one of the K-important strings. Each line in the next K lines contains the index of
	one string in the given set that appears in H and the corresponding position (0-based) in H.
	Print a blank line after each test case's output.
***********************************************************************************************************************
Example

Input
3

3 3 1
abc
cde
bcf

3 3 2
abc
cde
bcf

3 3 3
abc
cde
bcf

Output
3
abc
0 0

4
abcf
0 0
2 1

7
abcfabc
0 0
2 1
0 4
**********************************************************************************************************************/
package medium.unsolved;

public class KImportantStrings {

	public static void main(String[] args) {

	}

}
