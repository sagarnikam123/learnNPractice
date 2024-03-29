/**'

	Idols and Fans

	Mike is a cool kid, so he's the most popular person in his school. All the girls want to be with him
	while all the boys want to be like him. There are N persons in Mike's school. No person in the school has a name
	(except Mike), but all of them have a unique ID integer number for the range[1..N]. Mike's ID equals to 1.
	Also, each person(except Mike) has his/her personal idol, who is another person from the school.
	Finally, each person X has an integer number AX. Let's define functions F and G for a person with ID equals to X:
	    If X = 1(which means that person X is Mike), then FX = AX and GX = 1;
	    Otherwise, let Y be the personal idol for X.
	        If FY + 1 < AX, then FX = AX and GX = 1;
	        If FY + 1 > AX, then FX = FY + 1 and GX = GY;
	        If FY + 1 = AX, then FX = FY + 1 and GX = GY + 1.
	It's guaranteed, that it's possible to calculate functions F and G for every person in the school.
	You are to write a program, that can efficiently process queries of the following types:
	    0 X NEW_VALUE - change the value of AX to NEW_VALUE;
	    1 X - calculate FX and GX.

	Input
	The first line of the input contains two integers N and Q, denoting the number of the persons in Mike's school and
	the number of queries to process. The second line contains N integers Ai, denoting A1, A2, ..., AN.
	The third line contains N - 1 integers Pi, denoting the personal idols of persons with IDs equal
	to 2, 3, ..., N. 1 ≤ Pi < i. The next Q lines contain information about the queries.
	The format of the queries is the same with the one described in the statement.

	Output
	For each query of the second type, output a single line containing two integers, FX and GX.

	Constraints
	1 ≤ N ≤ 100000;
	1 ≤ Q ≤ 300000;
	1 ≤ Ai ≤ 109, for each person;
	1 ≤ X ≤ N, 1 ≤ NEW_VALUE ≤ 109, for each query of the first type.
***********************************************************************************************************************
Example

Input:
5 2
1 2 3 4 5
1 2 3 4
1 5
0 1 100

Output:
5 5

Explanations

In the input, before the second query, F's and G's equals to the following:

ID 	F 	G
1 	1 	1
2 	2 	2
3 	3 	3
4 	4 	4
5 	5 	5

After the second query, F's and G's equals to the following:

ID 	F 	G
1 	100 	1
2 	101 	1
3 	102 	1
4 	103 	1
5 	104 	1

**********************************************************************************************************************/

package medium.unsolved;

public class IdolsAndFans {

	public static void main(String[] args) {

	}

}
