/**

	Small Airport

	A city has a small Airport with only one runway. At any time one aeroplane can land or one aeroplane can take off,
	but not both at the same time. Aeroplanes arrive at the airport airspace ready to land after every m units of time.
	The aeroplanes which will land will also take off after waiting n units of time.
	At any given time, the runway may be idle or a plane may be landing or taking off.
	At any time instant there may be several aeroplanes waiting either to land or take off.
	As it is always better to keep an aeroplane waiting on the ground than in the air,
	so this small airport allows an aeroplane to takeoff only when there are no aeroplanes waiting to land.
	Assuming that there are p aeroplanes waiting to land and q aeroplanes waiting to take off at time zero,
	write a program that will give the status of the aeroplanes after kth unit of time.
	Units of time are numbered starting from 0. Note that the aeroplanes that are there at the airport at
	time zero can take off at the earliest opportunity without the stipulated waiting time.

	Input
	The input to this program is the number of aeroplanes p (p ≤ 20) waiting to land and
	number of aeroplanes q (q ≤ 50) waiting to take off at time 0,
	followed by the other inputs m (m ≤ 100), n (n ≤ 50) and k (k ≤ 100000), respectively.
	Note that there can be no negative or fractional inputs.

	Input Format
	The number of test cases (not more than 500) will be specified in the first line followed by
	the input for each test case. Each test case contains p, q, m, n and k separated by single spaces.

	Output
	The output to this program is the number of aeroplanes already landed,
	the number of aeroplanes already taken off, the number of aeroplanes still waiting to land and
	the number of aeroplanes still waiting to take off, after kth unit of time.

	Output Format
	For each test case, print on a single line separated by spaces, the number of aeroplanes already landed,
	the number of aeroplanes already taken off, the number of aeroplanes still waiting to land and
	the number of aeroplaces still waiting to take off, respectively, after kth unit of time.
***********************************************************************************************************************
Example

Input:
3
2 3 5 2 15
3 2 3 5 10
4 6 6 2 18

Output:
5 7 0 1
6 5 0 3
7 12 0 1

**********************************************************************************************************************/

package medium.unsolved;

public class SmallAirport {

	public static void main(String[] args) {

	}

}
