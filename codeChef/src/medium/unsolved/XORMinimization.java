/**

	XOR Minimization

	You are given an array A consisting of N non-negative integers.
	The elements of array A are indexed with integers 1, 2, 3, ..., N. You need to implement a data structure,
	which can process the following queries efficiently:

	    1 L R: find the minimal number in the subarray A[L..R] and count how many times it appears there;
	    2 L R K: replace each number Ai with the expression (Ai xor K) for the subarray A[L..R].

	You can read about XOR-operation here: http://en.wikipedia.org/wiki/Exclusive_or

	Input
	The first line of the input contains two integers N and Q, denoting the size of A and
	the number of the queries to process. The second line contains N non-negative integers, denoting array A.
	The next Q lines contain the queries to process, each contains one query.
	The format of queries is the same with the one described in the legend.

	Output
	Your output should contain exactly Q1 lines, where Q1 is the number of the queries of the first type in the input.
	For each query of the first type you need to output two numbers: the minimal number in the subarray A[L..R] and
	the number of times it appears there.
	You should output the answers for the queries in the order they appear in the input.

	Constraints
	    1 ≤ N ≤ 250 000;
	    The number of the queries of the first type won't exceed 40000;
	    The number of the queries of the second type won't exceed 10000;
	    0 ≤ Ai < 65536;
	    0 ≤ K < 65536, for each query of the second type appeared in the input;
	    1 ≤ L ≤ R ≤ N, for each query appeared in the input.

***********************************************************************************************************************
Example

Input:
5 3
0 1 0 1 0
1 1 5
2 1 5 1
1 1 5

Output:
0 3
0 2

Explanation
Initially A[] = {0, 1, 0, 1, 0}.
After the second query A[] = {1, 0, 1, 0, 1}.
**********************************************************************************************************************/

package medium.unsolved;

public class XORMinimization {

	public static void main(String[] args) {

	}

}
