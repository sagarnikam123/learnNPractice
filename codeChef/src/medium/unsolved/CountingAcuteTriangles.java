/**

	Counting The Acute Triangles

	A triangle is acute if all its internal angles are acute (< 90o). You are given a set of N points on a 2D plane.
	Calculate the number of acute triangles that can be formed using points from the set as vertices.

	Two triangles are different if the set of three vertices of one triangle is not equal
	to the set of three vertices of the other triangle.

	Input
	The first line of the input contains an integer N, the number of points in the set.
	Each of the next N lines contains two space separated integers which are the x and y coordinates of points in the set.

	Output
	Output a single line containing the number of acute triangles.

	Constraints
	    3 ≤ N ≤ 2000
	    The x, y coordinate of each point satisfies 0 ≤ x, y ≤ 10,000
	    All points are distinct.
***********************************************************************************************************************
Example

Input1:
3
0 0
2 2
0 3
Output1:
1

Input2:
3
0 0
2 2
0 5
Output2:
0

Input3:
4
1 1
3 2
1 3
3 4
Output3:
2

Explanation
Example case 3. Two acute triangles are {(1, 1), (3, 2), (1, 3)} and {(3, 2), (1, 3), (3, 4)}
**********************************************************************************************************************/

package medium.unsolved;

public class CountingAcuteTriangles {

	public static void main(String[] args) {

	}

}
