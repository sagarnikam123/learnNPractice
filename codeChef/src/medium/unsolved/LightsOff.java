/**

	Lights Off

	Lights Off is a puzzle game consisting of an n x n grid of lights. At the beginning of the game, some of the lights
	are switched on. When a light is pressed, this light and the four adjacent lights are toggled, i.e.,
	they are switched on if they were off, and switched off otherwise.
	The purpose of the game is to switch all the lights off. The following figure illustrates the game:
	Johnny has become addicted to playing the Lights Off game on his new iPhone.
	Yesterday he got stuck at a difficult level. He asked you, the talented programmer, for help.
	Please write a program to help Johnny solve the Lights Off game, not only for the regular 5x5 board size,
	but also for much larger dimensions!

	Input
	The first line contains t, the number of test cases (about 10). Then t test cases follow.
	Each test case has the following form:
	    The first line contains n, the size of the board (3 ≤ n ≤ 30).
	    Then n lines follow, each line contains n characters '0' or '1'. The character in the ith line and jth
	    column is '0' if the corresponding light is off and '1' if it is on.

	Output
	For each test case, in the first line, print k, the number of times Johny must press a light.
	Any valid solution in which k does not exceed 5000 is accepted.
	Then k lines follow, each line containing two numbers i and j (1 ≤ i, j ≤ n), describing the position of
	a light to be pressed. Note that (i,j) means the light in the ith row and jth column; the rows are numbered
	1 to n from top to bottom, and the columns are numbered 1 to n from left to right.
***********************************************************************************************************************
Example
Input:
1
3
000
110
010

Output:
5
1 1
2 1
2 2
3 2
3 3

Output details:
The states of the game after pressing each light are:
  010   ->  110   ->  100   ->  011   ->  000
-->
000
110
010 	(1,1) 	110
010
010 	(2,1) 	010
100
110 	(2,2) 	000
011
100 	(3,2) 	000
001
011 	(3,3) 	000
000
000
**********************************************************************************************************************/
package medium.unsolved;

public class LightsOff {

	public static void main(String[] args) {

	}

}
