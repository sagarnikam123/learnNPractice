/**

	Chef and Substrings

	Chef has a string S = S1S2 ... SN, consisting of N lowercase Latin letters. Also he has M pairs of integers Li, Ri
	(1 ≤ Li ≤ Ri ≤ N).For each pair Li, Ri, Chef writes out all distinct substrings of string S, which are started from
	positions Li, Li + 1, ..., Ri. Your task is to help Chef. That is, for each pair, find out how many substrings that
	he needs to write.

	Input
	The first line of the input contains an integer T denoting the number of test cases.
	The description of T test cases follows.
	The first line of each test case contains non-empty string S and the second line contains positive integer M.
	Each of the next M lines contains a pair of integers Li, Ri.

	Output
	For each pair of each test case print the required number of substrings.

	Constraints
	    String S contains only lowercase Latin letters.
	    1 ≤ Li ≤ Ri ≤ N.
	    Sum of all length's of S for test cases is not greater than 50000. Sum of all M values for test cases is not
	    greater than 50000.
***********************************************************************************************************************
Example
Input:
2
ababa
4
1 1
1 5
5 5
3 4
a
1
1 1
Output:
5
9
1
5
1
**********************************************************************************************************************/

package medium.unsolved;

public class ChefAndSubStrings {

	public static void main(String[] args) {

	}

}
