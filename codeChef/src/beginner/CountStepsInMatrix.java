/**********************************************************************************************************************

	Count Steps in Matrix

	You have a matrix of size N * N with rows numbered through 1 to N from top to bottom and columns through 1 to N
	from left to right. It contains all values from 1 to N2, i.e. each value from 1 to N2 occurs exactly
	once in the matrix. Now, you start from the cell containing value 1, and from there visit the cell with value 2,
	and then from there visit the cell with value 3, and so on till you have visited cell containing the number N2.
	In a single step, you can move from a cell to one of its adjacent cells. Two cells are said to be adjacent to
	each other if they share an edge between them. Find out minimum number of steps required.
	For example, if matrix is
	1 3
	2 4
	You start from cell containing value 1 (i.e. (1,1)) and you want to visit cell with value 2 (i.e. (2,1)).
	Now, from cell (2,1) you have to visit cell (1,2), which can be done is 2 steps (First we go from (2, 1) to
	(1, 1) and then to (1, 2), total 2 steps). Finally you move to cell where value 4 is present in 1 step.
	So, total number of steps required is 4.

	Input
	The first line of the input contains an integer T denoting the number of test cases.
	The description of T test cases follows. The first line of each test case contains a single integer N denoting the
	size of matrix. Each of the next N lines contain N integers denoting the values in the rows of the matrix.

	Output
	For each test case, output in a single line the required answer.

	Constraints
	1 ≤ T ≤ 5
	1 ≤ N ≤ 500

	Subtasks
	Subtask 1 (30 points) : 1 ≤ N ≤ 20
	Subtask 2 (70 points) : Original constraints
***********************************************************************************************************************
Example

Input:
2
2
1 3
2 4
3
1 7 9
2 4 8
3 6 5
Output:
4
12

Explanation
Example case 1. Explained in the statement.
Example case 2.
This is the sequence of cells visited:
(1,1) to (2,1) to (3,1) to (2,2) to (3,3) to (3,2) to (1,2) to (2,3) to (1,3).
Warning: Large input files, use scanf instead of cin in C/C++.
**********************************************************************************************************************/
package beginner;

public class CountStepsInMatrix {

	public static void main(String[] args) {

	}

}
