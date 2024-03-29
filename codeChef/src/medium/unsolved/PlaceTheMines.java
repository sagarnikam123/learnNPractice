/**

	Place the mines!

	The following a tie breaker problem. The best answer will receive one point. All other successful answers will be
	scored on a curve and receive a fraction of a point based on how close they come to the best answer.
	You are given a large square area with an edge length of 2n, subdivided into unit squares (fields). Some mines have
	already been planted on certain fields, and we would like to plant as few more mines as possible, so as to destroy
	all of the fields of the area (assuming all the mines explode simultaneously). For each mine, the fields it destroys
	are given as follows. For any k , 0 <= k <= n, we can partition the considered area
	into 2n rectangles of size 2k x 2n-k. The mine is assumed to destroy a square if and only if the mine and the square
	belong to the same rectangle in the considered partition, for some value of k. For example, if n=3,
	the mine "*" placed on the square at position (1,1) will destroy all the fields which are not marked with dots below:

	.#......
	.#......
	.#......
	.#......
	##......
	##......
	#*######
	####....

	Input
	The first line will contain integer 8<=n<=16, (where 2n is the size of the area). The second line will contain
	0<=m<2n, the number of already planted mines.
	The next m lines will contain the 0-based x and y coordinates of the existing mines.

	Output
	The first line should contain t - the number of mines to be added.
	The next t lines should contain the coordinates of the added mines.

	Scoring
	For each test case, you will receive (2n-m)/t-1 points, provided you destroy all the fields of the area.
***********************************************************************************************************************
Example
Input:
2
1
3 3

Output:
2
0 1
2 2

You will receive (4-1)/2 - 1 = 0.5 pts for such a mine placement.
Note:
	There will be some tests with no initially placed mines, and some tests with initial placements covering most of
	the area pretty well. Good luck!
**********************************************************************************************************************/

package medium.unsolved;

public class PlaceTheMines {

	public static void main(String[] args) {

	}

}
