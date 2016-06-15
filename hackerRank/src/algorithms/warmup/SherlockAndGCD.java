/*

	Sherlock and GCD

	Sherlock is stuck. He has an array A1,A2,⋯,AN. He wants to know if there exists a non empty subset of this array
	such that there doesn't exist any integer x (x>1) which divides all elements in that subset.
	
	Input Format
	First line contains T, the number of testcases. Each testcase consists of N in one line. The next line contains 
	N integers denoting the array A.
	
	Output
	Print YES or NO, if there exists any such subset or not, respectively.
	
	Constraints
	1≤T≤10
	1≤N≤100
	1≤Ai≤105 ∀1≤i≤N
***********************************************************************************************************************
Sample input
2
3
1 2 3
2
2 4

Sample output
YES
NO

Explanation
In first testcase, S={1},S={1,2},S={1,3},S={2,3} and S={1,2,3} are all the possible subsets 
	which satisfy the given condition.
In second testcase, no non-empty subset exists which satisfies the given condition.
**********************************************************************************************************************/
package algorithms.warmup;

public class SherlockAndGCD {

	public static void main(String[] args) {

	}

}
