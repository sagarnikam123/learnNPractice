/*

	Build the Tree

	Given a rooted tree with N nodes. Nodes of the tree are numbered from 1 to N. Node 1 is the root. You need to add
	M nodes to it in the given order. All the nodes have values. Cost for adding a node A with value va to another node
	B with value vb is va*vb. There is an additional cost of y (so total cost of va*vb+y) if B has atleast x child nodes.
	After node A has been added to another node B it becomes a child of B. After adding a node A to the tree,
	nodes next in list can be added to A also. You need to calculate the total minimal cost
	to add all M nodes in given order.

	Input
	The first line of input contains N. The second line of input contains N integers representing the values of nodes
	in order from node 1 to node N. N-1 lines follow, each line defines an edge. Each line has 2 integers,
	which says that those 2 nodes are connected. Next line of input contains an integer Q, denoting the number of
	queries you need to answer. Each query consists of 2 lines. The first line of each query has 3 integers, M x y.
	The second line of each query has M integers representing the values of the nodes to be added in order.
	Note that in each query, M nodes are added to the initial tree, and hence changes made in previous query
	should not be considered in later queries

	Output
	For each query, output a single line containing the minimal total cost to add all the nodes in given order.

	Constraints
	    1 ≤ N ≤ 100000
	    1 ≤ x ≤ 1000
	    1 ≤ y ≤ 1000
	    1 ≤ Q ≤ 100
	    1 ≤ M ≤ 100
	    1 ≤ Values of all nodes in input ≤ 1000
***********************************************************************************************************************
Example
Input:
3
2 2 3
1 2
2 3
2
2 2 10
10 10
3 2 10
1 2 2

Output:
40
6

Explanation
Query 1.
Optimal solution is to add the first node from the query to node 1 of the tree and the second node from the query to
		node 2 of the tree. Cost is 10*2 + 10*2.
Query 2.
Optimal solution is to add the first node from the query to node 1 of the tree for a cost 2. Then add next two nodes
		from the query to newly added node.
Total cost is 2 + 2 + 2 = 6.
**********************************************************************************************************************/
package medium.unsolved;

public class BuildTheTree {

	public static void main(String[] args) {

	}

}
