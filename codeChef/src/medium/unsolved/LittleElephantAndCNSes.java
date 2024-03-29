/**

	Little Elephant and CNSes

	A Little Elephant from the Zoo of Lviv likes lucky strings, i.e., the strings that
	consist only of the lucky digits 4 and 7. The Little Elephant has N favorite strings S1, S2, ..., SN
	and the favorite number K. Each character in Si (1 ≤ i ≤ N) is either the lucky digit (4 or 7) or
	the question mark ?. Consider some non-decreasing lucky string S. In other words, S has one of the
	following forms: 444...444, 777...777, 444...444777...777. The string S is called a CNS (plural form is CNSes)
	if we can replace some (possibly zero) number of question marks with the lucky digits in each of the string
	S1, S2, ..., SN in a such way that the total number of replacements for all strings does not exceed K and S
	is a subsequence of each of the strings derived after the replacement. The Little Elephant wants to know the
	total number of all different non-empty CNSes. Help him to find this number.
	Notes.
	Let S be some string (possibly not lucky). Then
	    |S| denotes the length of the string S;
	    S[i] (1 ≤ i ≤ |S|) denotes the ith character of S (the numeration of characters starts from 1);
	The string T is called a subsequence of the string S if T can be derived from S by deleting some
	(possibly zero) number of characters without changing the order of the remaining characters.
	For example, T = 474 is a subsequence of S = 74477747?? since after deleting characters at positions
	1, 2, 5, 6, 8, 9, 10 from S we obtain T. Note that, the empty string and the string S
	itself are always the subsequences of S.

	Input
	The first line of the input file contains two space separated integers N and K, the number of strings in
	the set and the favorite number of the Little Elephant. Each of the following N lines contains one favorite string
	of the Little Elephant. Namely, ith line among these N lines contains the string Si.

	Output
	For each test case output a single line containing the answer for this test case.

	Constraints
	1 ≤ N ≤ 7474
	0 ≤ K ≤ 109
	Si is non-empty for 1 ≤ i ≤ N.
	|S1| + |S2| + ... + |SN| ≤ 100000. In other words, the total length of all N strings does not exceed 100000.
	Each character in Si (1 ≤ i ≤ N) is either the lucky digit (4 or 7) or the question mark ?.
***********************************************************************************************************************
Example

Input:
3 2
4447
47???74
4?77?

Output:
5

Explanation
For the sample input all different CNSes are 4, 7, 44, 47 and 447. Note, that 444 is not a CNS since it requires at
least 3 replacements of the question marks.
**********************************************************************************************************************/
package medium.unsolved;

public class LittleElephantAndCNSes {

	public static void main(String[] args) {

	}

}
