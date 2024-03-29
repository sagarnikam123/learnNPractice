/**

	Sereja and Ballons

	Sereja has n boxes with balloons. Boxes are numbered with integers from 1 to n.
	The first box contains a[1] balloons, the second- a[2] balloons and so on.
	Also Sereja wrote down m pairs of the number (l[1], r[1]), (l[2], r[2]), ..., (l[m], r[m]) on a piece of paper.
	Now Sereja decided to play and began to burst the balloons in the boxes.
	At every step Sereja bursts one balloon from some box and wants to know :
	what is the count of the indices i (1 ≤ i ≤ m),
	that all balloons in the boxes with the indices from l[i] to r[i] are already bursted. Please, help Sereja.

	Input
	The first line contains numbers n and m — the number of the boxes and the number of the pair of numbers.
	The next line contains n integers a[1], a[2], ..., a[n].
	The following m lines contain m pairs of numbers (l[1], r[1]), (l[2], r[2]), ..., (l[m], r[m]).
	The next line contains number k — the number of times, when Sereja had his balloon bursted.
	The next k line contains integers x[1], x[2], ..., x[k].
	Index of the box, in what Sereja bursted a balloon at the step number i (1 ≤ i ≤ k), is denoted as y[i].,
	which can be found as: y[i] = x[i] + ans[i - 1],
	wherein ans[0] = 0, аnd ans[i] (i>0) — is the answer on the problem after ith bursting of the balloons.

	Output
	For each test case, print k lines — the answers after every steps.

	Constraints
	    1 ≤ n, m ≤ 10^5
	    1 ≤ a[i] ≤ 100000
	    1 ≤ l[i] ≤ r[i] ≤ n
***********************************************************************************************************************
Example

Input:
5 3
1 1 1 1 1
5 5
2 2
1 3
5
4
2
0
2
3

Output:
0
1
1
2
3

Update:
You may assume that, y[i] <= n and k <= 100000

**********************************************************************************************************************/

package medium.unsolved;

public class SerejaAndBallons {

	public static void main(String[] args) {

	}

}
