/**

 	Triangular Queries

You are given N lattice points (Xi, Yi), i = 1, 2, ..., N on a 2D Coordinate System.
You have to process Q queries, each query will be given as the form "x y d".
Let ABC be the triangle having vertices at A(x+d, y), B(x, y) and C(x, y+d).
For each query, you have to find how many of the given lattice points lie inside or on the boundary of the triangle ABC.

Input
The first line of the input contains two space-sparated integers N and Q.
Each of the following N lines have two space-sparated integers Xi, Yi giving the x and y coordinate of a lattice point.
Then the following Q lines contain three space-sparated integers x, y, d giving a query.

Output
For each query, output one integer on a line which denotes the number of the given lattice points
which lie inside or on the boundary of the triangle.

Constraints
1 ≤ N ≤ 300000 (3 * 105)
1 ≤ Q ≤ 200000 (2 * 105)
1 ≤ Xi, Yi ≤ 300000 (3 * 105)
1 ≤ x, y, d ≤ 300000 (3 * 105)
***********************************************************************************************************************
Sample

Input 1:
5 3
1 3
1 5
3 6
4 4
2 6
1 5 3
1 5 4
1 1 1

Output 1:
3
3
0

Input 2:
2 2
1 5
3 7
2 5 6
2 3 4

Output 2:
1
0

**********************************************************************************************************************/

package medium.unsolved;

public class TriangularQueries {

	public static void main(String[] args) {

	}

}
