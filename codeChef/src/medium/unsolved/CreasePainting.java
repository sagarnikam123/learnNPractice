/**

	Crease Painting

	In cricket, the long white line before the batsman and the runner is called crease.
	We have a painting machine that can be programmed to paint white lines on the field.
	Imagine the cricket ground as an infinite grid of cells and the painting machine is initially located at the cell (0,0)
	which is already colored white and all other cells are in green color. Each instruction to the machine is of the form
	"direction distance", where direction is one of 'U' (up), 'D' (down), 'R' (right) or 'L' (left) and
	 distance is a positive integer. On reading an instruction, the machine moves in the specified direction for
	 specified distance and paints all the unpainted (green) cells with white color. Given a sequence of N instructions,
	 find the number of cells that are painted white, for each of them.

	Input
	First line contains N, number of instructions ( 1 ≤ N ≤ 1000 ).
	Each of the next N lines contains an instruction of the form DIR DIST, where DIR is one of ( U/D/R/L ) and
	DIS is a positive integer ( 1 ≤ DIS ≤ 109 )

	Output
	For each instruction in the given order, output the number of cells that are painted white for each of them,
	in a separate line.
***********************************************************************************************************************
Example

Input:
5
R 100
U 10
L 120
D 10
R 200


Output:
100
10
120
10
99

Explanation:
R 100 : all 100 cells from (1,0) to (100,0) are painted white
U 10 : all 10 cells from (100,1) to (100,10) are painted white
L 120 : all 120 cells from (99,10) to (-20,10) are painted white
D 10 : all 10 cells from (-20,9) to (-20,0) are painted white
R 200 : The cells [ (0,0) to (100,0) ] are already painted white, so only the 19 cells
[ (-19,0) to (-1,0) ] + the 80 cells [ (101,0) to (180,0) ] are painted white in this step.
**********************************************************************************************************************/
package medium.unsolved;

public class CreasePainting {

	public static void main(String[] args) {

	}

}
