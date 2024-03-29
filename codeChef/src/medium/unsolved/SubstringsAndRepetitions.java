/**

	Substrings and Repetitions

	Given a string S and several frequencies Fi. For each Fi output the number of substrings of S
	(the characters of substring should be contiguous) that occur at least Fi times in S.
	Note, that we consider two substrings distinct if they have distinct length, or
	they have distinct starting indices.

	Input
	The first line of input contains integer T, the number of test cases.
	The first line of each test case contains string S (it contains only lowercase Latin letters).
	The second line of each test case contains an integer Q, that is the number of queries to be answered.
	Then Q lines follows containing Fi each.

	Output
	For each query, output the required answer.

	Constraints
	    1 ≤ |S| ≤ 200000
	    1 ≤ Q ≤ 200000
	    1 ≤ Fi ≤ 200000
	    Sum of |S| over all test cases ≤ 200000
	    Sum of Q over all test cases ≤ 200000
***********************************************************************************************************************
Example

Input:
1
aaeddf
4
1
2
3
4

Output:
21
4
0
0

Explanation
There are a total of 6*(6+1)/2 substrings, all of them occur at least once. So for F1=1 answer is equal to 21.
Note that substring "a" is repeated 2 times in S, both the instances are added to the answer.
Look at F2=2. Substring "a" and substring "d" occurs 2 times each in S.
The answer for F2 is 4, that is all the occurrences of "a" and "d".
There are no substrings which repeat more than twice. So rest answers are 0

**********************************************************************************************************************/
package medium.unsolved;

public class SubstringsAndRepetitions {

	public static void main(String[] args) {

	}

}
