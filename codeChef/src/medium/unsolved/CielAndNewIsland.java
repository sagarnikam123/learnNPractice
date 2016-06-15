/**

	Ciel and a new island
	
	Chef Ciel develops a new island with her restaurants.In the island, Ciel intends to built N restaurants,
	and the coordinate of the i-th restaurant will be (xi, yi). In addition, Ciel is going to create K roads, 
	whose location is not decided yet.Each road must be a infinitely long straight line.
	
	Let di be the distance between the i-th restaurant and the nearest road from the i-th restaurant.
	Ciel would like to create K roads which minimize max(d1, d2, ..., dN).
	Your task is to calculate the minimal value of max(d1, d2, ..., dN).

	Input
	The first line contains an integer T, the number of test cases in the input file.
	Then T test cases follow.The next line contains 2 integers N and K.
	Then next N lines contain 2 integers xi and yi.

	Output
	For each test case, print the minimal value of max(d1, d2, ..., dN).
	Your answer must have an absolute error no more than 0.000001 (10-6).
	
	Constraints
	1 ≤ K ≤ N ≤ 13
	-100 ≤ xi, yi ≤ 100
	If i ≠ j, then (xi, yi) ≠ (xj, yj)
	The sum of N in one input file does not exceed 30.
***********************************************************************************************************************
Sample Input
2
8 1
20 1
20 -1
-20 1
-20 -1
1 20 
1 -20
-1 20
-1 -20
8 2
20 1
20 -1
-20 1
-20 -1
1 20
1 -20
-1 20
-1 -20
 
Sample Output
14.849242404868
0.707106781137	
**********************************************************************************************************************/
package medium.unsolved;

public class CielAndNewIsland {

	public static void main(String[] args) {

	}

}
