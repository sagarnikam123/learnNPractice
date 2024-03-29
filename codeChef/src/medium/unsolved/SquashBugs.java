/**

	Squash the Bugs

	Bugs have gotten into The Chef’s kitchen! Help him trap them all and he’ll make you
	a batch of his famous chocolate chip cookies.
	You are given a given a square map of the kitchen divided into tiles, and
	in each tile sits some known number of bugs. You also have a square trap,
	which can be dropped to cover a certain number of tiles
	(the trap may only cover tiles from within the map, and must be aligned to the borders of the kitchen).
	However, the trap only catches bugs from one of the tiles which it has covered,
	having a minimum number of bugs on it. For all possible positions at which the trap can be dropped,
	determine number of bugs that will be caught.

	Input
	Two numbers, 0< n <= 1000 (size of the map), and 0< k <= n (size of the trap),
	followed by n rows with n numbers, determining the number of bugs on each tile.
	The number of bugs on each tile will fit in an signed 32-bit integer.

	Output
	You should output n-k+1 rows with n-k+1 numbers in each row.
***********************************************************************************************************************
Example

Input:
4 2
0 1 2 3
4 5 6 7
8 9 0 1
2 3 4 0

Output:
0 1 2
4 0 0
2 0 0

**********************************************************************************************************************/

package medium.unsolved;

public class SquashBugs {

	public static void main(String[] args) {

	}

}
