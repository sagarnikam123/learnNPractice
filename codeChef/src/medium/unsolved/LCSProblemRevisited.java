/**

	The LCS Problem Revisited

	The Longest Common Subsequence (LCS) problem is a well known problem in Computer Science.
	Every computer science students in Byteland knows this problem. Johnny does, too.

	Recall that a subsequence of a string S is obtained by deleting some characters from S.
	Given two strings S and T, the LCS problem is the find the longest sequence that is a subsequence of both S and T.

	Johnny has the habit of deriving harder problems from a familiar problem. This time, based on the LCS problem,
	he has thought up the following problem:

	Given two strings S and T, how many distinct LCS of S and T are there?

	Write a program to help Johnny solve this problem. Since the result may be very large,
	you only need to print the remainder of the result when dividing by 23102009.

	Input
	The first line contains t, the number of test cases (about 10). Then t test cases follow.
	Each test case consists of two lines, the first line is the string S and the second line is the string T. You may assume that the strings consists of only lowercase characters and the length of the each string is at most 1000 characters.
	Successive test cases at input are separated by a single blank line.

	Output
	For each test case, print a single line containing two numbers which are the length of the LCS and the remainder of the number of distinct LCS of S and T when dividing by 23102009.
****************************************************************************************************************
Example

Input
2
acbd
acbd

vnvn
vn

Output
4 1
2 1

Output details

The only LCS in the first case is "acbd" and in the second case is "vn".

*****************************************************************************************************************/

package medium.unsolved;

public class LCSProblemRevisited {

	public static void main(String[] args) {

	}

}
