/**

	Moving between Floors

	Did you know that the world's tallest structure is Burj Khalifa in Dubai ? To survive when the world ends,
	Mr.Turing thinks that he should climb one of those skyscrapers ( tall buildings ). There are N tall buildings
	numbered b_1, b_2, ... , b_N in that order and b_i and b_i+1 are adjacent to each other for 1 ≤ i < N.
	Each of these have exactly F number of floors, f_1, f_2, ... , f_F from bottom to top. Floors f_i and f_i+1 in
	the same building are adjacent to each other for 1 ≤ i < F and it takes one unit of time to move between them.
	It also takes one unit of time to move between the floor f_1 of a building and f_1 of its adjacent building.
	Turing is afraid that some buildings may still collapse and so he lists down the bridges connecting some of them,
	to know how to escape quickly. There are M bridges, each of which connects two floors of different buildings.
	Each of these bridges is given as bi fi T bj fj, meaning it takes T units of time to move along this bridge which
	connects the floor fi of building bi and the floor fj of building bj. All ways are bidirectional.
	Turing wants to know, given bq and fq, the sum of the shortest time it takes to reach (b,f) starting from (bq,fq),
	for all possible 1 ≤ b ≤ N ( except b = bq ) and 1 ≤ f ≤ F. In other words, given (bq,fq),
	find the value of Σ D(bq,fq,b,f) for all possible (b,f) except b = bq, where D(bi,fi,bj,fj) is the shortest time
	it takes to reach floor fi of building bi from floor fj of building bj. Get ready to answer his Q such queries.

	Input
	First line contains N F M. N is the number of buildings , F is the number of floors in each building and M is
	the number of bridges. M lines follow, each of the form bi fi T bj fj, as mentioned in the problem statement.
	Next line contains Q, the number of queries and Q lines follow, each of the form bq bf

	Output
	For each test case, output the sum of the shortest time it takes from (bq,fq)
	to reach each floor of every other building.

	Constraints
	2 ≤ N, M ≤ 100
	1 ≤ F, T ≤ 1,000,000
	1 ≤ Q ≤ 2012
	1 ≤ bi,bj,bq ≤ N and 1 ≤ fi,fj,fq ≤ F
***********************************************************************************************************************
Example

Input:
2 4 1
1 3 1 2 3
3
1 1
1 2
1 3

Output:
10
10
8
Note : There are multiple test sets, and the judge shows the sum of the time
		taken over all test sets of your submission, if Accepted.
**********************************************************************************************************************/
package medium.unsolved;

public class MovingBetweenFloors {

	public static void main(String[] args) {

	}

}
