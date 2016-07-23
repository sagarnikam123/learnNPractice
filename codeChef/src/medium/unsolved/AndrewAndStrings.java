/**

	Andrew and the Strings

	Andrew likes strings very much.
	He has two strings A and B of N lower alphabet letters. We denote S[i, j] as 
	the substring from ith to jth characters of string S.
	Andrew is interested in the number of such fours of integers (LA, RA, LB, RB), 
	where 1 ≤ LA ≤ RA ≤ N, 1 ≤ LB ≤ RB ≤ N, and RA − LA = RB − LB, such that 
	the Hamming distance between substrings A[LA, RA] and B[LB, RB] is not greater than K.
	Here the Hamming distance between two strings of the same length is 
	the number of unequal characters on the same positions of strings. Help him and find this number.

	Input
	The first line of the input contains an integer T, denoting the number of test cases.
	The description of T test cases follows.
	The first line of each test case contains two space-separated integers N and K.
	The second line contains string A, and the third line contains string B.

	Output
	For each test case, output an integer, denoting the number of fours (LA, RA, LB, RB) 
	satisfying the conditions described in the problem statements.
	
	Constraints
	    1 ≤ T ≤ 10
	    1 ≤ N ≤ 1000
	    1 ≤ K ≤ N
	    Both A and B are contain only N lower alphabet letters
***********************************************************************************************************************
Example

Input:
3
3 2
aba
abb
3 2
abc
def
1 1
a
a

Output:
14
13
1

Explanation
Example case 1: There are 14 fours as following:
(1, 1, 1, 1) : dist(A[1, 1], B[1, 1]) = dist(a, a) = 0 ≤ 2
(1, 1, 2, 2) : dist(A[1, 1], B[2, 2]) = dist(a, b) = 1 ≤ 2
(1, 1, 3, 3) : dist(A[1, 1], B[3, 3]) = dist(a, b) = 1 ≤ 2
(2, 2, 1, 1) : dist(A[2, 2], B[1, 1]) = dist(b, a) = 1 ≤ 2
(2, 2, 2, 2) : dist(A[2, 2], B[2, 2]) = dist(b, b) = 0 ≤ 2
(2, 2, 3, 3) : dist(A[2, 2], B[3, 3]) = dist(b, b) = 0 ≤ 2
(3, 3, 1, 1) : dist(A[3, 3], B[1, 1]) = dist(a, a) = 0 ≤ 2
(3, 3, 2, 2) : dist(A[3, 3], B[2, 2]) = dist(a, b) = 1 ≤ 2
(3, 3, 3, 3) : dist(A[3, 3], B[3, 3]) = dist(a, b) = 1 ≤ 2
(1, 2, 1, 2) : dist(A[1, 2], B[1, 2]) = dist(ab, ab) = 0 ≤ 2
(1, 2, 2, 3) : dist(A[1, 2], B[2, 3]) = dist(ab, bb) = 1 ≤ 2
(2, 3, 1, 2) : dist(A[2, 3], B[1, 2]) = dist(ba, ab) = 2 ≤ 2
(2, 3, 2, 3) : dist(A[2, 3], B[2, 3]) = dist(ba, bb) = 1 ≤ 2
(1, 3, 1, 3) : dist(A[1, 3], B[1, 3]) = dist(aba, abb) = 1 ≤ 2

Example case 2: The four (1, 3, 1, 3) no longer satisfies the conditions, because
(1, 3, 1, 3) : dist(A[1, 3], B[1, 3]) = dist(abc, def) = 3 > 2	

**********************************************************************************************************************/
package medium.unsolved;

public class AndrewAndStrings {

	public static void main(String[] args) {

	}

}
