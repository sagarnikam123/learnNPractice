/*

	Chef and The Colored Grid

	The Chef wants to color a 3xN grid and he has N different types of colors to do that. Each cell of the grid has
	to be colored with exactly one color. A coloring of the grid is considered beautiful if no two cells of the same
	row or same column have the same color.	The cells of first two rows are already colored and they don’t violate
	the beautiful condition (one color doesn’t appear more than once on the same row or on the same column).
	Find how many different ways he can color the 3rd row such that the resulting grid is beautiful. Two ways of
	coloring are considered different if there is at least one cell which is colored with different color.

	Input
	The first line of the input contains an integer T denoting the number of test cases.
	    The first line of each test
	    case contains an integer N.
	    The next line contains N integers A1, A2, ..., AN, where Ai(1 ≤ i ≤ N)
	    	is the color of the cell at column i of 1st row.
	    The next line contains N integers B1, B2, ..., BN, where Bi(1 ≤ i ≤ N)
	    	is the color of the cell at column i of 2nd row.

	Output
	For each test case, output the number of ways to color the 3rd row such that the resulting
	grid is beautiful. Output the result modulo 1000000007.

	Constraints
	    1 ≤ T ≤ 20
	    3 ≤ N ≤ 1000
	    A1, A2, ..., AN is a permutation of the numbers 1, 2, ..., N.
	    B1, B2, ..., BN is a permutation of the numbers 1, 2, ..., N.
	    Ai ≠ Bi ( 1 ≤ i ≤ N)
***********************************************************************************************************************
Example

Input:
2
4
2 1 4 3
4 2 3 1
4
2 4 1 3
1 3 2 4

Output:
2
4

Explanation
For the 1st case the valid ways to color the 3rd row are: {1,3,2,4} and {3,4,1,2}.
For the 2nd case the valid ways are: {3,1,4,2} , {3,2,4,1} , {4,1,3,2} and {4,2,3,1}.
**********************************************************************************************************************/
package medium.unsolved;

public class ChefAndColoredGrid {

	public static void main(String[] args) {

	}

}
