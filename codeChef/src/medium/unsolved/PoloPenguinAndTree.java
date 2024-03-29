/**

	Polo the Penguin and the Tree

	Polo, the Penguin, likes the XOR operation. Please read NOTE if you are not familiar with XOR operation.
	XOR-sum of a list of numbers is the result of XOR-ing all of them.
	XOR-sum of (A[1] XOR A[2] XOR ... XOR A[N]) is defined as A[1] XOR (A[2] XOR (A[3] XOR ( ... XOR A[N]))).
	Apart of that, Polo, the Penguin, likes trees. He has a weighted tree consisting of N vertices.
	He also likes to choose some pair of vertices U and V and find XOR-sum of all weights on the simple path from U to V.
	Help him to find the maximal number he can get .

	Input
	The first line of the input contains an integer T denoting the number of test cases.
	The description of T test cases follows.
	The first line of each test case contains a single integer N denoting the number of vertices in the tree.
	The next N-1 lines contain description of edges of the tree, one edge per line in format U[i] V[i] W[i],
	where U[i] and V[i] are the indices of the vertices of edge and W[i] is the weight of the edge.
	Vertices are numbered from 1 to N, inclusive.

	Output
	For each test case, output a single line containing the answer to the corresponding test case.

	Constraints
	    1 ≤ T ≤ 7
	    1 ≤ N ≤ 100,000
	    0 ≤ W[i] ≤ 1,000,000,000
***********************************************************************************************************************
Example

Input:
2
3
1 2 3
3 1 2
4
1 2 2
1 3 2
4 3 1

Output:
3
3

Explanation
Example case 1. In this case there are tree ways to choose pair of vertices:
    (1, 2): The only edge you path is edge (1, 2) with weight 3. The XOR-sum is simply 3.
    (1, 3): The only edge you path is edge (1, 3) with weight 2. The XOR-sum is simply 2.
    (2, 3): There are two edges on the path in this case: (2, 1) and (1, 3) with weights 3 and 2, respectively.
    The XOR-sum is 3 XOR 2 = 1. So the maximal value Polo can get is 3.
Example case 2. If Polo chooses vertices 1 and 4, then the XOR-sum is equal to 2 XOR 1 = 3.
This is the maximal value he can get in this case.

NOTE
XOR operation is a bitwise "Exclusive OR" operation performed on two integers in binary representation.
First, the shorter number is prepended with leading zeroes until the numbers have equal size in binary.
Then the resulting number (also in binary) contains 0 in all positions where the corresponding bits coincide, and
1 on the rest of the positions. For example, 3 XOR 5 = 0112 XOR 1012 = 1102 = 6.

**********************************************************************************************************************/

package medium.unsolved;

public class PoloPenguinAndTree {

	public static void main(String[] args) {

	}

}
