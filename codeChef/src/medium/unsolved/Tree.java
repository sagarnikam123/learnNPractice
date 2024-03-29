/**

	Tree

	You are given a tree that is built in a following way: initially there is single vertex 1.
	All the other vertices are added one by one, from vertex 2 to vertex N,
	by connecting it to one of those that have been added before.
	You are to find the diameter of the tree after adding each vertex.
	Let the distance between vertex u and v be the minimal number of edges you have to pass to get from u to v,
	then diameter is the maximum distance between any two pairs (u,v) that have already been added to the tree.

	Input
	The input consists of several Test cases. The file line of input contains an integer T,
	the number of test cases. T test cases follow.
	The first line of each test case contains an integer N, then N-1 lines follow:
	ith line contains an integer Pi, which means that vertex i+1 is connected to the vertex Pi.

	Output
	For each test case, output N-1 lines - the diameter after adding vertices 2, 3,..,N

	Constraints
	1 ≤ T ≤ 15
	1 ≤ N ≤ 105
	Pi ≤ i
	Sum of N over all test cases in a file does not exceed 2 * 105
***********************************************************************************************************************
Example

Input:
2
3
1
1
5
1
2
3
3

Output:
1
2
1
2
3
3

************************************************************************************************************************/

package medium.unsolved;

public class Tree {

	public static void main(String[] args) {

	}

}
