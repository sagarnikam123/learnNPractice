/**

	Little Elephant and Product

	A Little Elephant from the Zoo of Lviv likes lucky numbers very much.
	Everybody knows that the lucky numbers are positive integers
	whose decimal representation contains only the lucky digits 4 and 7.
	For example, numbers 47, 744, 4 are lucky and 5, 17, 467 are not.

	Let F4(X) be the number of digits 4 in the decimal representation of X, and
	F7(X) be the number of digits 7 in the decimal representation of X.
	For example, F4(456) = 1, F4(444) = 3, F7(1) = 0, F7(747) = 2.
	The Little Elephant wants to know the largest product F4(X) ∙ F7(X),
	where L ≤ X ≤ R. In other words he wants to know the value max{F4(X) ∙ F7(X) : L ≤ X ≤ R}.

	Input
	The first line of the input file contains an integer T, the number of test cases. T test cases follow.
	The only line of each test case contains two integers L and R separated by exactly one space.

	Output
	For each test case output a single line containing the answer for the corresponding test case.

	Constraints
	1 ≤ T ≤ 1000
	1 ≤ L ≤ R ≤ 1018
***********************************************************************************************************************
Example

Input:
3
1 10
1 100
47 74

Output:
0
1
1

Explanation
In both second and third test cases the maximal product is achieved at the numbers 47 and 74.

***********************************************************************************************************************/

package medium.unsolved;

public class LittleElephantAndProduct {

	public static void main(String[] args) {

	}

}
