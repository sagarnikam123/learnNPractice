/**

	Mountain Holidays

	Some time ago, Chef discovered that more and more people have started climbing mountains every day.
	So he decided to build restaurant in the Ukrainian resort Bukovel (Carpathian Mountains).
	But there are many places to choose, so he wants to choose the best one.
	Let us learn how attractiveness for a location is calculated.

	Some time ago, Chef discovered that more and more people have started climbing mountains every day.
	So he decided to build restaurant in the Ukrainian resort Bukovel (Carpathian Mountains).
	But there are many places to choose, so he wants to choose the best one.
	Let us learn how attractiveness for a location is calculated.

	Next to every place, is some mountain. A Mountain is a sequence of points (0,height0), (1,height1), ... (n-1,heightn-1),
	where every two adjacent points are connected with a segment. For example, consider the mountain

	(0,0), (1,2), (2,1), (3,2), (4,1), (5,3), (6,0), (7,1), (8,0)

	       /\
	  /\/\/  \
	 /        \/\

	Visitors may start their climbing from some position i and finish in position j,
	where (i < j).They calculate the attractiveness of a mountain, as the number of different climbs that it offers.
	Of course, so does our Chef!

	A climb from position i to position j is the sequence (i,heighti), ... (j,heightj).
	Two climbs, say i1 to j1 and i2 to j2, are different if and only if

	(j1 – i1 != j2 – i2) or
	heighti1+k – heighti1+k-1 != heighti2+k – heighti2+k–1 for at least some k in the range (1, 2, ... j1-i1).

	Let us consider two climbs from the mountain we considered above

	  /\/
	 /

	and

	  /\
	 /  \
	     \

	The first one is the climb from (0 to 3), and the second one is the climb from (4 to 6).
	They are different because (3 - 0 != 6 - 4). On the other hand, climbs such as (0 to 1) and (4 to 5) are the same.
	Given the array, heights, find the number of different climbs that exist on the mountain
	which is described by the sequence of these heights. Because answer can be very large, output it modulo 1,000,000,009.

	Input
	First line of input contains T, the number of test cases. The first line of each test case contains N,
	the number of peaks. On second line of each test case, there are N numbers. The ith number denotes the height of ith peak.

	Output

	For each test case, output a single number, the number of unique climbs.
	Constraints

	1 ≤ T ≤ 1000
	1 ≤ N ≤ 100000
	Sum of N over all test cases in a file ≤ 100000
	|Heighti| ≤ 1000000
	|Heighti – Heighti-1| ≤ 100 (Tourists won’t climb very steep cliffs)
***********************************************************************************************************************
Sample

Input
3
6
1 2 3 4 5 6
9
0 2 1 2 1 3 0 1 0
7
0 5 -5 5 -5 4 -4

Output
5
31
20

Explanation
The second test case is taken from the problem statement.
**********************************************************************************************************************/

package medium.unsolved;

public class MountainHolidays {

	public static void main(String[] args) {

	}

}
