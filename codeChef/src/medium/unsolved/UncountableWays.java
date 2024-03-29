/**

	The Uncountable Ways

	Little Chef loves mathematics.Every day, he solves some mathematical problems to improve his skill.

	A few days ago, he found a popular problem about turtles. The problem is as follows.

	Little Chef is given R rectangles, numbered 1 through R. The width and height of the i-th rectangle are Ni and Mi unit respectively.
	There is a turtle located on the top-left corner of each rectangle.
	For each rectangle, count the number of ways the turtle can reach the bottom-right corner,
	if each turtle can only move right or down 1 unit at any time.
	The turtle is not allowed to move outside the rectangle, but, of course, the turtle can move on the boundary of the rectangle.

	In less than one second, this problem was solved for all rectangles.He felt that the problem was too easy.
	This morning, Little Chef wanted more challenges.
	Thus, for each rectangle i, he cut and removed a rectangle of Ai × Bi unit from the top-right corner. See the following figure for detail.

	He could not solve this new version of the problem easily.
	Help him count the number of ways each turtle can reach the bottom-right corner using the same rule as before.

	Input
	The first line of the input contains a single integer R.
	The description of R rectangles follows.
	Each description consists of a single line containing four space-separated integers Ni, Mi, Ai, and Bi.

	Output
	For each rectangle, output a single line containing the number of ways, modulo 1,000,000,007.

	Constraints
	1 ≤ R ≤ 10
	2 ≤ Ni, Mi ≤ 400,000
	1 ≤ Ai < Ni
	1 ≤ Bi < Mi

***************************************************************************************************************
Example

Input:
1
2 2 1 1

Output:
5

Explanations:
In the sample case, there are 5 ways the turtle can reach the bottom right corner as follows:

****************************************************************************************************************/

package medium.unsolved;

public class UncountableWays {

	public static void main(String[] args) {

	}

}
