/**

	SudokuX

	SudokuX is a variation of the popular game Sudoku. Similar to standard Sudoku, in SudokuX, we have to enter the
	numbers 1 - 9 once in each row, column and 3 x 3 square within the 9x9 puzzle grid. In addition to standard Sudoku,
	the numbers must only occur once in each of the two diagonals. Johnny is very interested in playing SudokuX.
	He believes that this game is so challenging that even the best computer programs could not solve it efficiently.
	Let's show Johnny the power of computers by writing a program
	to solve even the hardest SudokuX puzzles within seconds!

	Input
	The first line contains t, the number of test cases (about 10). Then t test cases follow.
	Each test case consists of 9 lines.
	Each line contains 9 characters '.' (blank grid), or '1'..'9' representing a SudokuX puzzle.
	Each test case is separated by a blank line.You are guaranteed that each given SudokuX puzzle has a unique solution.

	Output
	For each puzzle, output the solution in the same format as the input. Print a blank line after each test case.
***********************************************************************************************************************
Example

Input
2
.8....2..
.1....5..
..34..7..
..9.5....
.2...46..
3........
9...2....
.........
......4.7

....41...
...6....5
.....7.9.
....1.3..
.5......1
.2.......
..18...76
.7......2
........3

Output
486715293
712938546
593462718
679251384
128394675
354876129
945627831
867143952
231589467

293541768
748692135
615387294
864715329
357269481
129438657
531824976
476953812
982176543

**********************************************************************************************************************/

package medium.unsolved;

public class SudokuX {

	public static void main(String[] args) {

	}

}
