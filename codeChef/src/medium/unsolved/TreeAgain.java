/**

	Tree Again

	Misha likes playing DotA and he would do nothing else but play it if he could. Unfortunately for Misha,
	real life is rough and he has to solve following problem before spending a day playing.
	You are given a rooted tree with N vertices. Vertices are numerated from 1 to N and
	vertex 1 is the root of the tree. A positive integer Wi is assigned to every node. Consider following code:

	Integer sum := 0;
	Array of boolean marked := {false, false, false, ..., false};
	Procedure Dfs(Integer v)
	    Begin
	        sum := sum + Wv;
	        marked[sum] := true;
	        For each node u that v is a parent of u do
	            Begin
	                Dfs(u);
	            End;
	    End;

	One can notice that the state of marked[] array depends on the order vertices u processed.
	You are to check for every integer number s from 1 to the sum of Wi
	whether there exists some order of viewing children in Dfs that marked[s] = true.
	Note that marked[] and sum are global variables and Dfs(1) is initially called.

	Input
	The first line contains integer N — the number of vertices in given tree.
	 N integers Wi follow in the next line. Then N-1 lines follow, ith of them contains a parent of vertex i+1.

	Output
	Let S be the sum over all Wi. You should output S characters ith of which should be equal to 1
	 if it is possible to get marked[i] = true and 0 otherwise. Have a look at the example for better understanding.

	Constraints
	    1 ≤ N ≤ 500
	    1 ≤ sum of all Wi ≤ 100000
	    1 ≤ Wi ≤ 100000
	    If u is the parent of vertex v then u < v

***********************************************************************************************************************
Example

Input:
5
1 7 7 2 4
1
1
2
4

Output:
100000010100011010001

**********************************************************************************************************************/

package medium.unsolved;

public class TreeAgain {

	public static void main(String[] args) {

	}

}
