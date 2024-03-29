/**

	Smart Frog

	Bibi the Smart Frog is playing a jumping game on an m x n rectangular board. There is a number written in each cell
	of the board (Bibi can read these numbers since he is very smart!) Bibi starts the game by picking any cell on the
	board and stays there. At each step, Bibi will jump to another cell. He can either:
	    Jump to the right to a cell in the same row, provided that the number written in that cell is not smaller than
	    	the number written in the current cell.
	    Jump downwards to a cell in the same column, provided that the number written in that cell is not greater than
	    	the number written in the current cell.
	To win the game, Bibi needs to jump through as many cells as possible. But no, he is not so extraordinarily smart
	that he could compute the optimal way to play the game. After all, he is only a frog, you know! Write a program to
	help Bibi compute the maximum number of cells that he can jump into.

	Input
	The first line contains t, the number of test cases (about 10). Each test case has the following form:
	    The first line contains two integers m, n (1 ≤ m, n ≤ 500).
	    Then, m lines follow, each line containing n numbers representing the rectangular board. It is guaranteed that
	    no number exceeds 106.
	Each test case is separated by a blank line.

	Output
	For each test case, print a single number that is the maximum number of cells that Bibi can jump into.
***********************************************************************************************************************
Example
Input:
2

2 3
2 1 1
2 1 1

4 4
6 2 5 2
4 5 3 8
9 7 8 9
9 9 9 5

Output:
3
5

Output details
A possible set of cells that Bibi could jump into is marked in bold:
2 1 1
2 1 1

6 2 5 2
4 5 3 8
9 7 8 9
9 9 9 5
**********************************************************************************************************************/
package medium.unsolved;

public class SmartFrog {

	public static void main(String[] args) {

	}

}
