/**

	Chef World

	Chef Ciel lives in a long street which can be thought as of x-axis of coordinate system.
	Her house is at coordinate 0 whereas her restaurant is situated at coordinate N.
	Usually Ciel goes from home to restaurant taking a step of size 1 or 2 in forward direction.
	We all know how much Chef loves Fibonacci numbers.

	But today, Ciel being little casual stepped in wrong direction on her way to her restaurant exactly once and
	of course she did not set her foot wrong at home.
	Now she wonders how many ways she can reach her restaurant provided that she stepped wrong once but not at home.

	She does not go past her restaurant because it is altogether different world and
	once she reaches her restaurant she stops.

	For example, if N is 3 then
	0 -> 1 -> -1 -> 0 -> 1 -> 3,
	0 -> 2 -> 1 -> 3

	are some possible ways where as
	0 -> -1 -> 1 -> 3, (She did not set her foot wrong at her home)
	0 -> 1 -> 3, (She sets her foot wrong direction exactly once)
	0 -> 1 -> 0 -> 3, (Her steps are always size 1 or 2)
	0 -> 1 -> 2 -> 4 -> 3, (She does not go past her restaurant)
	0 -> 1 -> 2 -> 3 -> 2 -> 3 (Once she reaches her restaurant, she stops)
	are not.

	Input
	First line of input contains T, number of test cases which is at most 10000.
	Then T lines follows each containing a positive integer N which is at most 1000000000000000 (1015).

	Output
	Number of ways Ciel can reach her restaurant modulo 1000000007 (109+7).
***********************************************************************************************************************
Sample Input:
2
3
4

Sample Output:
18
44

**********************************************************************************************************************/

package medium.unsolved;

public class ChefWorld {

	public static void main(String[] args) {

	}

}
