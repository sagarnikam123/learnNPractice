/**

	Codechef Password Recovery

	Chef recently decided a very curious encryption algorithm for CodeChef passwords. He took an N-letter password and
	found all the possible 2-letter substrings, considering the characters of a password was written in a circle.
	Thus, for AbcD, he would deduce the following substrings: Ab, bc, cD, DA.

	Then, some of the substrings were reversed. For example, the set of substrings above could be converted to
	Ab, cb, Dc, DA. All the substrings were then stored in a database. Whenever the need be,
	the substrings were recovered, and a password was generated. Of course sometimes,
	more than one such password could be generated, but Chef thinks this is perfectly fine!

	Unfortunately, a programming error by the new CodeChef minion, led to corruption of this database and
	mixed all the strings together. Chef now wants to retrieve the passwords, a few at a time.
	He gives you a set of substrings A from some of the passwords - these you should always consider, and
	another set of substrings B from which you can use some. Can you tell him if it is possible
	to select all the substrings from A and some (0 or more) substrings from B and construct 1 or more passwords?
	Each selected string can be used only once, for at max 1 password. See explanation of Sample Input for clarification.

	Input
	The first Line contains a single number T, the number of test cases.
	Each test case contains 2 lines.
	The first line of the test case contains the number N (= |A|), followed by the N substrings Chef gives in A.
	The next line contains M (= |B|), followed by M substrings.
	Two substrings are input with a single space character between them.

	Output
	Print T lines, one for each test case. Output either "YES" if it is possible to select all strings from A and
	some strings from B	such that the overall set of strings represent the substrings for 1 or more passwords.
	Output "NO" otherwise.

	Constraints
	1 ≤ T ≤ 100
	1 ≤ N ≤ 1000
	1 ≤ M ≤ 1000
	All characters would be upper case or lower case English letters. Passwords are case sensitive.
***********************************************************************************************************************
Sample Input

2
4 aB aB Ca Bc
6 aB Ca ca ab ba bc
4 aB aB Ca Bc
3 Ba aC bc

Sample Output
YES
NO

Explanation
In the first Sample Input, you can construct "aBaC" from (aB aB Ca Ca) and
"aBc" from (Bc aB ca). Strings selected from A are shown in bold. Remember that substrings can be reversed. Note
that although there are repeated strings, each string is used in at most one of the passwords.

**********************************************************************************************************************/

package medium.unsolved;

public class CodechefPasswordRecovery {

	public static void main(String[] args) {

	}

}
