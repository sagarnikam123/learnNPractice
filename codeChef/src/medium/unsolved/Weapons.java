/**

	Weapons

	There are N fighter aircrafts guarding the sky. Each aircraft flies at a constant altitude and
	at a constant velocity (vx,vy). In other words, every hour it travels vx km in the X direction and
	vy km in the Y direction (vx and vy can be negative as well). But there has been a major problem.
	The weapons systems in all the aircrafts have been disabled by an unknown virus. So they are essentially useless!
	If they return to base camp, the enemy will realize something is wrong and may attack. To avoid this scenario,
	it is decided that a system expert will leave in a small fast plane and visit each fighter aircraft.
	The expert will hover his small aircraft exactly over the fighter plane he wants to repair, send the program (fix)
	to the pilot (via Bluetooth) and then give instructions to the fighter pilot to run the program.
	This whole process takes exactly an hour, once the expert is hovering over the fighter aircraft. After he’s done,
	he moves onto the next fighter aircraft. When he has repaired all aircrafts, he returns back to base camp.
	Your task is to determine how long it takes for this entire process, assuming the expert leaves base camp at time t = 0

	You can assume the following:
	1. The experts plane can fly in any direction with a maximum speed of S (assume acceleration, deceleration and
		varying altitude to be instantaneous).
	2. It is guaranteed that S will be greater than the speed of any fighter aircraft.
	3. Multiple planes may have the same (x, y) co-ordinates, but there are no collisions –
		because they are flying at different altitudes.

	Input
	There are multiple test cases (not more than 500). Each test case starts with
	a line containing a single integer N (1 ≤ N ≤ 8, chosen uniformally randomly) –
	indicating the number of fighter planes (excluding the plane of our expert).
	The next N lines each consist of 4 space separated integers – the initial co-ordinates (px,py) (at t = 0) and
	the velocity vector (vx,vy) respectively of the nth fighter aircraft. The last line of the test case consists
	of 3 space separated integers – the (x,y) co-ordinates of base camp and S – the speed of the experts plane.
	The end of input is indicated by a case that starts with N = 0 and this last case should not be processed.
	All co-ordinates / vectors in the input have an absolute value less than or equal to 1000 (S of course,
	does not fall under the same restriction).

	Output
	For each test case, output the minimum time taken for the expert to leave the base camp, visit and
	fix each fighter aircraft exactly once and return to base camp. The format to print the result is:

	A h m s

	Where A is the case number (starting with 1 for the first case and so on) and h, m, s are non negative integers
	denoting hours, minutes and seconds respectively (they should be separated by single space).
	Note that m and s are atmost 59. The time should be rounded up to the next second.
**********************************************************************************************************************
Example

Input:
5
1 0 0 0
2 0 0 0
3 0 0 0
4 0 0 0
5 0 0 0
0 0 1
3
1 2 3 4
2 2 40 23
7 8 22 10
0 0 50
0

Output:
1 15 0 0
2 5 59 50

**********************************************************************************************************************/

package medium.unsolved;

public class Weapons {

	public static void main(String[] args) {

	}

}
