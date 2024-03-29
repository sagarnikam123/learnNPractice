/**

	Across the River

	Chef Ciel would like to make a bridge on the river in order to purchase cooking ingredients more easily.
	The river is an infinitely long straight line with width W. To be more specific,
	the river is a set of the all points on 0 ≤ y ≤ W in xy-plane.
	There are N piles on the river, and M types of wooden disks are available. The location of the k-th pile is (Xk, Yk).
	The k-th type of wooden disks has radius Rk, and its price is Ck per disk.
	Ciel can buy wooden disks as many as she likes, and Ciel can put them on the river.
	For each wooden disk, its center must be one of the locations (Xk, Yk) of piles.

	Note that some part of wooden disks may be on the ground (y < 0, W < y) or other piles.
	Ciel can move only on y = 0, on y = W, and on wooden disks. What is the minimum cost
	to make it possible to move from y = 0 to y = W.

	Input
	The first line contains an integer T, the number of test cases. Then T test cases follow.
	The first line for each test case has 3 space-sparated integers N, M and W. Next N lines
	has 2 space-separated integers Xk and Yk. Then next M lines has 2 space-separated integers Rk and Ck.

	Output
	For each test case, print the minimum cost to make it possible to move from y = 0 to y = W.
	If it is impossible, print "impossible" without quotes.

	Constraints
	1 ≤ T ≤ 10
	1 ≤ N ≤ 250
	1 ≤ M ≤ 250
	2 ≤ W ≤ 1000000000 (109)
	0 ≤ Xk ≤ 1000000000 (109)
	1 ≤ Yk < W
	1 ≤ Rk ≤ 1000000000 (109)
	1 ≤ Ck ≤ 1000000 (106)
***********************************************************************************************************************
Sample

Input
3
11 4 13
19 10
8 7
11 4
26 1
4 2
15 4
19 4
1 9
4 6
19 5
15 10
2 1
3 100
4 10000
5 1000000
11 4 13
19 10
8 7
11 4
26 1
4 2
15 4
19 4
1 9
4 6
19 5
15 10
2 1
3 2
4 3
5 4
1 1 1000000000
0 500000000
1 1

Output
206
5
impossible

Explanation
The following figure indicates the optimal way for the first case.[see in image]
***********************************************************************************************************************/

package medium.unsolved;

public class AcrossRiver {

	public static void main(String[] args) {

	}

}
