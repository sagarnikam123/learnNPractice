/**

	Maze of Digits

	Johnny, a third year computer science student of Byteland University, is rushing with his AI assignment project
	which is due tomorrow evening. In this project, he has to build a Lego NXT robot which is able to navigate in a maze.
	Johnny calls his robot WallB (because he likes the movie "WallE" very much). The maze is an MxN rectangular grid.
	There are digits 0..9 and obstacles placed at some intersections. Starting at some intersection, in each step, WallB
	can move to one of the four intersections adjacent to its current position.
	However, WallB cannot step into an obstacle. A maze intersection with a handwritten digit Johnny needs to program
	WallB to be able to do the following tasks.	First, WallB has to traverse through all reachable intersections of the
	maze and recognize the digits written at the intersections. Johnny has already finished this part of the assignment
	since he is very good at image recognition algorithms. WallB needs to scan and recognize all the reachable digits.
	The second part of the assignment is harder. Prof. Q will announce a number X. Based on the map of the maze obtained
	in the first part, Johnny needs to program WallB to find a shortest path that passes through digits which sum up to X.
	To be more precise, suppose in his route, WallB passes through the digits d1, d2, ..., dk in order;
	then we should have d1 + d2 + ... + dk = X. WallB could pass through a digit more than once.
	Johnny gets stuck in this second part of the assignment. Could you write a program to help him?

	Input
	The first line contains t, the number of test cases (about 25). Then t test cases follow.
	Each test case has the following form:
	    The first line contains two integers M, N (0 <= M, N <= 100) representing the size of the maze.
	    Each line in the next M+1 lines contains N+1 characters describing the structure of the maze.
	    Each character represents an intersection and could be one of:
	        '.': empty intersection
	        '#': obstacle
	        '0'..'9': digits
	        '*': starting position of WallB
	    The last line contains the number X announced by Prof. Q (1 <= X <= 100).
	Successive test cases are separated by blank lines.
	The number of digits in a maze is at most 100.

	Output
	For each test case, print the minimum number of steps that WallB needs to travel to visit the digits that sum up to X.
	If there is no way for WallB to complete the task, print the number -1.
***********************************************************************************************************************
Example
Input:
3

2 3
1.#2
#..#
*.#.
3

2 3
2.#2
#..#
*.#.
5

2 3
2.#2
#.3#
*.#.
5

Output:
8
-1
6
**********************************************************************************************************************/
package medium.unsolved;

public class MazeOfDigits {

	public static void main(String[] args) {

	}

}
