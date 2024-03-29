/**

	Chef and Favourite Sequence

	Chef has an integer sequence a1, a2, ..., aN of size N, where all the elements of the sequence are 0 initially.
	Chef also has M segments, here the ith one is [Li, Ri]. He wants to create new sequences using the following operation:
	    In a single operation, he picks a segment from the M segments. Let the chosen segment be [s, t].
	    Then flip the all elements from sth to tth elements, namely, ai is changed to 1 − ai for all s ≤ i ≤ t.

	Chef can perform the operation as many times as Chef likes.
	Chef wants to know how many different sequences Chef can make. Since the answer can be very large,
	please print it modulo 1000000007 (109+7).

	Input
	The first line contains two space-separated integers N and M, denoting the size of the sequence and
	the number of the segments respectively.
	Then the ith line of the next M lines contains two space-separated integers Li and Ri, denoting the ith segments.

	Output
	Print a single line containing one integer,
	denoting the number of the sequences which can be created by Chef, modulo 1000000007 (109+7).

	Constraints
	    1 ≤ N, M ≤ 100000 (105)
	    1 ≤ Li ≤ Ri ≤ N
***********************************************************************************************************************
Example

Input:
3 3
1 1
2 2
3 3

Output:
8

Explanation
In the example case, all the sequences (0,0,0), (0,0,1), (0,1,0), (1,0,0), (0,1,1), (1,0,1), (1,1,0), (1,1,1)
can be created by Chef.

**********************************************************************************************************************/


package medium.unsolved;

public class ChefAndFavouriteSequence {

	public static void main(String[] args) {

	}

}
