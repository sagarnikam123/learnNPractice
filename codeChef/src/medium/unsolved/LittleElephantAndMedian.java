/**

	Little Elephant and Median

	Little Elephant from Zoo of Lviv likes medians so much. Let us define median term for some array A.
	Let B be the same array A, but sorted in non-decreasing order. Median of A is Bm (1-based indexing),
	where m equals to (n div 2)+1. Here 'div' is an integer division operation. So, for a sorted array with 5 elements,
	median is the 3rd element and for a sorted array with 6 elements, it is the 4th element.
	Little Elephant has an array A with n integers. In one turn he can apply the following operation
	to any consecutive subarray A[l..r]: assign to all Ai (l <= i <= r) median of subarray A[l..r].
	Let max be the maximum integer of A.
	Little Elephant wants to know the minimum number of operations needed to change A
	to an array of n integers each with value max.
	For example, let A = [1, 2, 3]. Little Elephant wants to change it to [3, 3, 3].
	He can do this in two operations, first for subarray A[2..3] (after that A equals to [1, 3, 3]),
	then operation to A[1..3].

	Input
	First line of the input contains single integer T - the number of test cases. Then T test cases follow,
	each of such format: first line - integer n, second line - array A consisted of n integers.

	Output
	In T lines print the results for each test case, one per line.

	Constraints
	1 <= T <= 100
	1 <= n <= 30
	1 <= A[i] <= 10^9
***********************************************************************************************************************
Example

Input:
2
3
1 2 3
4
2 1 1 2

Output:
2
1

***********************************************************************************************************************/

package medium.unsolved;

public class LittleElephantAndMedian {

	public static void main(String[] args) {

	}

}
