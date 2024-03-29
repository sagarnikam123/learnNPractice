/**

	Chef and Uniqueness

	Today chef has decided to cook a string S of length N. But he will not just cook the whole string,
	but a unique substring of the given string S. A substring is unique if it occurs in the string S only once.
	Chef also does not like all the indices of a string. He wants a special index i to be in the unique substring.
	But the length of the unique substring should be minimized.	Chef wants your help to find an unique substring of
	minimum possible length which contains the index i. If there are several such substrings,
	chef will take the lexicographically smallest one. But chef has not told you the value of i yet.
	So you have to find the answer for all i (1 to N).

	Input
	Input contains a single line containing the string S of length N and it consists of lower case letters only.

	Output
	Print N lines, where i-th line will contain two space separated integers Pi and Li.
	Pi is the starting position (1-indexed) and
	Li is the length of the shortest unique substring which contains the index i.

	Constraints
	    1 ≤ N ≤ 105
	    S contains only lower case letters.
***********************************************************************************************************************
Example

Input:
abcab

Output:
1 3
2 2
3 1
3 2
3 3

Explanation
Example case 1.
i = 1, shortest unique substring is "abc"
i = 2, shortest unique substring is "bc"
i = 3, shortest unique substring is "c"
i = 4, shortest unique substring is "ca"
i = 5, shortest unique substring is "cab"

**********************************************************************************************************************/

package medium.unsolved;

public class ChefAndUniqueness {

}
