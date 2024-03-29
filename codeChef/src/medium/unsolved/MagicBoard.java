/**

	Magic Board

	Long long ago, there is a magic board. The magic board has N*N cells: N rows and N columns.
	Every cell contains one integer, which is 0 initially. Let the rows and the columns be numbered from 1 to N.

	There are 2 types of operations can be applied to the magic board:

	    RowSet i x: it means that all integers in the cells on row i have been changed to x after this operation.
	    ColSet i x: it means that all integers in the cells on column i have been changed to x after this operation.

	And your girlfriend sometimes has an interest in the total number of the integers 0s on some row or column.

	    RowQuery i: it means that you should answer the total number of 0s on row i.
	    ColQuery i: it means that you should answer the total number of 0s on column i.

	Input
	The first line of input contains 2 space-separated integers N and Q.
	They indicate the size of the magic board, and the total number of operations and queries from the girlfriend.
	Then each of the next Q lines contains an operation or a query by the format mentioned above.

	Output
	For each query, output the answer of the query.

	Constraints
	1 ≤ N, Q ≤ 500000 (5 * 105)
	1 ≤ i ≤ N
	x ∈ {0, 1} (That is, x = 0 or 1)
***************************************************************************************************************
Sample

Input:
3 6
RowQuery 1
ColSet 1 1
RowQuery 1
ColQuery 1
RowSet 1 0
ColQuery 1

Output:
3
2
0
1

Explanation

At first, the magic board is

000 <- row 1
000
000

So the answer of first query "RowQuery 1" is 3.

After the "ColSet 1 1", the board becomes

column 1
|
V
100
100
100

So the answer of the second query "RowQuery 1" is clearly 2, since the cell (1,1) became 1. And the answer of the third query "ColQuery 1" is 0.

Finally, apply the operation "RowSet 1 0", the board has changed to

000
100
100

From this board, the answer of the last query "ColQuery 1" should be 1.

****************************************************************************************************************/

package medium.unsolved;

public class MagicBoard {

	public static void main(String[] args) {

	}

}
