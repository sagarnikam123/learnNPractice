/**

	Battleship V

	In the game of "BattleShip V", you control a cannon which is attacking a large enemy battleship,
	armed with many guns. Your goal is to destroy as many of the guns as possible.
	The battle field is a 2D Cartesian grid, where your cannon is located at the origin.
	The enemy battleship is a horizontal line segment located from the coordinates (X1 , Y) to (X2, Y).
	There are exactly (X2 - X1 + 1) guns on the ship, located at the integer points (X1, Y), (X1+1, Y), ..., (X2, Y).
	However, the problem is, you cannot always fire at a gun. There are supernatural rocks located at all points of
	the battlefield whose X and Y coordinates are both integers. In order to fire successfully at an enemy's gun,
	the line connecting your cannon and that gun must not go through any rocks.
	How many guns you successfully destroy?

	Input
	The first line contains t, the number of test cases (about 100). Then t test cases follow.
	Each test case consists of one line containing three numbers Y, and X1, X2
	(2100000000 > ≤ Y ≤ 2100000000, -2100000000 ≤ X 1 ≤ X2 ≤ 2100000000).

	Output
	For each test case, output the number of the enemy battleship's guns that your cannon can destroy.
***********************************************************************************************************************
Example

Input
1
2 -2 1


Output
2
***********************************************************************************************************************/
package medium.unsolved;

public class BattleshipV {

	public static void main(String[] args) {

	}

}
