/**

	Bytelandian Robots

	The Bytelandian Robotic Deparment has just succesfully made a robot that can be programmed to move. Our robot can
	perform two type of movements: moving one step to the left or one step to the right.
	Our robot moves according to the instruction from its control sequence. A control sequence of the robot is a string
	consisting of only two type of characters: '+' and '-' symbols, in which '+' means a rightward step and '-' means a
	leftward step. For example, '+--' is a control sequence that instruct the robot to go one step to the right followed
	by two steps to the left. Our robot also has a master control sequence (MCQ), which is a string of N characters
	'+' and '-'. Any valid control sequence of the robot must be a subsequence of the MCQ. Recall that a subsequence is
	a sequence obtained by removing some characters of the initial sequence. An empty sequence is
	also a subsequence of the MCQ. Our robot is currently placed on a runway of length L, in which the leftmost point
	has coordinate 0 and the rightmost point has coordinate L. Intially our robot stands at the point at coordinate A.
	It needs to move to the point at coordinate B. Of course, it cannot go outside the runway.
	How many different control sequences are there that make the robot go from A to B?

	Input
	The first line contains t, the number of test cases (about 50). Then t test cases follow. Each test case has
	the following form:
	    The first line contains four integers N, L, A, B (1 ≤ N ≤ 500, 1 ≤ L ≤ 109, 0 ≤ A, B ≤ L).
	    The second line contains the MCQ which is a string of exactly N characters.
	    	The MCQ contains only symbols '+' and '-'.

	Output
	For each test case, print a single number that is the number of different control sequences that could make
	the robot to go from A to B. Since the result may be a very large number, you only need to print the remainder
	of the result when dividing by 7051954.
***********************************************************************************************************************
Example
Input
5
6 6 0 0
+-+-+-
6 6 3 3
+-+-+-
6 1 0 0
+-+-+-
6 6 1 4
+-+-+-
6 6 2 6
+-+-+-

Output
5
9
4
1
0

Output details
Case 1: the different control sequences are +-, +-+-, ++--, +-+-+- and the empty sequence.
Case 2: same as case 1 together with 4 additional sequences: -+, -+-+, -++-, +--+. These additional sequences no longer
		make the robot go outside the runway as in case 1.
Case 3: same as case 1 but without the sequence ++-- since it will make the robot go outside the runway
Case 4: there is only one possible control sequence: +++
Case 5: there is no way for the robot to go to coordinate 6
**********************************************************************************************************************/
package medium.unsolved;

public class BytelandianRobots {

	public static void main(String[] args) {

	}

}
