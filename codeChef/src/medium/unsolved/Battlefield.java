/**

	The battlefield

	The Ministry of Defence (MoD) of Mighty Mouse Kingdom (MMK) needs to arrange defence forces in a battlefield to
	prevent possible attacks of Catland's army. The battlefield is a square grid of N rows and N columns. The cell
	in the ith row and jth column is denoted by (i,j), with 0 ≤ i, j ≤ N-1.	The MoD wants to put exactly N cannons
	in cells of the grid. Each cannon can guard all the cells that are in the same column or same row as it is.
	To minimize the cost, the MoD decides that each row and each column should be guarded by exactly one cannon.
	Of course not all ways of arranging the cannons are equally good strategically. A cannon in cell (i, j) is said
	to be in a safe position if:
	    1 ≤ j ≤ N-2
	    The row coordinates of the cannons in the j-1st and j+1st columns lie on the same side of the row coordinate i
	    of the cannon (i,j). In other words, if we denote rk to be the row position of the cannon in the kth column,
	    we should have either rj-1 < i and rj+1 < i, or rj-1 > i and rj+1 > i.
	The Safety Index (SI) of the battlefield is the number of cannon in safe positions. Military strategists have
	pointed out that the SI must be at least K (K may vary depending on the weather, opponent's forces, etc.) in order
	to have a good defence of this important battlefield.
	Compute the number of ways of arranging the cannons so that the SI is at least K.

	Input
	The first line contains t, the number of test cases (about 1000). Then t test cases follow. Each test case is
	described in a single line containing two numbers N and K (3 ≤ N ≤ 2000, 0 ≤ K ≤ N-2).

	Output
	For each test case, print a single line containing the number of ways of arranging the cannons so that the Safety
	Index is at least K. Since the result may be very large, you only need to print the remainder of the result
	when dividing by 30041975.
***********************************************************************************************************************
Example
Input:
3
3 1
4 1
8 5

Output:
4
22
13102

Output details
Case 1: There are four ways of arranging the cannons: put the cannon at positions
{(1,1), (2,3), (3,2)}, {(1,2), (2,3), (3,1)}, {(1,2), (2,1), (3,3)}, or {(1,3), (2,1), (3,1)}.
The cannon in the middle column is always in the safe position.
*********************************************************************************************************************/
package medium.unsolved;

public class Battlefield {

	public static void main(String[] args) {

	}

}
