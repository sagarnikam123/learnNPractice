/**

	The Lucky Draw

	The Chef is planning a buffet for the DirectiPlex inauguration party, and everyone is invited. On their way in,
	each guest picks up a sheet of paper containing a random number (this number may be repeated).
	The guests then sit down on a round table with their friends. The Chef now decides that he would like to play a game.
	He asks you to pick a random person from your table and have them read their number out loud.
	Then, moving clockwise around the table, each person will read out their number. The goal is to find that
	set of numbers which forms an increasing subsequence. All people owning these numbers will be eligible
	for a lucky draw! One of the software developers is very excited about this prospect, and wants to maximize
	the number of people who are eligible for the lucky draw. So, he decides to write a program that decides
	who should read their number first so as to maximize the number of people that are eligible for the lucky draw.
	Can you beat him to it?

	Input
	The first line contains t, the number of test cases (about 15). Then t test cases follow.
	Each test case consists of two lines:
	    The first line contains a number N, the number of guests invited to the party.
	    The second line contains N numbers a1, a2, ..., an separated by spaces,
	    	which are the numbers written on the sheets of paper in clockwise order.

	Output
	For each test case, print a line containing a single number which is the maximum number of guests that can
	be eligible for participating the the lucky draw.

	Constraints
	    1 ≤ N ≤ 10000
	    You may assume that each number number on the sheet of paper; ai is randomly generated, i.e. can be with
	    equal probability any number from an interval [0,U], where U is some upper bound (1 ≤ U ≤ 106).
***********************************************************************************************************************
Example

Input:
3
2
0 0
3
3 2 1
6
4 8 6 1 5 2

Output:
1
2
4

Output details
Case 1: No matter where who reads there number first, just one person is eligible for the lucky draw.
Case 2: The person in the last position could read their number first to obtain the sequence 1 3 2.
		We could then pick 2 sheets with numbers 1 and 2.
Case 3: The person in the fourth position could read their number first to obtain the sequence 1 5 2 4 8 6.
 		We could then pick 4 sheets with numbers 1 2 4 6.
***********************************************************************************************************************/

package medium.unsolved;

public class LuckyDraw {

	public static void main(String[] args) {

	}

}
