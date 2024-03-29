/**

	Compressed String

	After the first chemistry lesson, Ron realized that the simplest way to
	compress a string of Latin characters is
	to write it down as a list of pairs of character and integer.
	This is done by writing each segment of identical characters as the character and the length of the segment.
	For example the string s = "AABBBCCCC" can be compressed as [ ('A', 2), ('B', 3), ('C', 4) ].
	In compressed notation, two consecutive pairs cannot have same character.
	For example [('A', 2), ('A', 4)] is invalid and its correct representation is [('A', 6)].

	After the first chemistry lesson, Ron realized that the simplest way to compress a string of Latin characters is
	to write it down as a list of pairs of character and integer.
	This is done by writing each segment of identical characters as the character and the length of the segment.
	For example the string s = "AABBBCCCC" can be compressed as [ ('A', 2), ('B', 3), ('C', 4) ].
	In compressed notation, two consecutive pairs cannot have same character.
	For example [('A', 2), ('A', 4)] is invalid and its correct representation is [('A', 6)].
	Ron has written down a string in compressed notation, and he wants to count the number of sub-strings
	(a segment of consecutive characters) of the original string that are palindromes.

	Recall that a palindrome is a non-empty string that reads the same backward as forward.
	Two sub-strings are considered to be different if they have different lengths or start at
	different positions in the original string.

	Input
	The first line of the input contains an integer T denoting the number of test cases.
	The description of T test cases follows.
	Each test case gives a string in compressed notation. The first line of each test case contains an integer K,
	the number of (character, integer) pairs in compressed notation. Each of the next K lines contains a single character,
	followed by a space, followed by a positive integer, the ith line being the ith pair in the list.

	Output
	For each test case, output a single line containing the corresponding answer.

	Constraints
	    1 ≤ T ≤ 10,000(104)
	    1 ≤ K ≤ 100,000(105)
	    Each character is an upper-case Latin character, i.e. 'A' through 'Z'.
	    The length of the original string does not exceed 1,000,000,000(109)
	    The sum of the Ks over all test cases will not exceed 1,000,000(106)
***********************************************************************************************************************
Example

Input:
3
2
A 2
B 2
3
A 2
B 1
A 2
1
A 11

Output:
6
9
66

Explanation
Example case 1:
The original string is AABB so the sub-strings
(represented by positions of the first and the last character) which are palindromes are
(1, 1), (1, 2), (2, 2), (3, 3), (3, 4) and (4, 4).

Example case 2:
The original string is AABAA. The sub-strings that are palindromes are the 4 sub-strings A,
the 2 sub-strings AA and the sub-strings B, ABA and AABAA. Together, they make 9 palindromes.

Example case 3:
The original string is A repeated 11 times, so all the sub-strings are palindromes.
**********************************************************************************************************************/

package medium.unsolved;

public class CompressedString {

	public static void main(String[] args) {

	}

}
