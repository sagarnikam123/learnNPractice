/**

 	Travelling Chef Problem

	When Chef is travelling - that's the problem. No one knows when he will change his velocity.
	But mathematicians are certain that Chef's velocity depends on the current time, and
	can be described as a cubic polynomial. A cubic polynomial can be defined as:
	v(t) = A×t3 + B×t2 + C×t + D, where A, B, C, D are rational numbers (A is non zero), and t is the current time.
	As for us, all we know is: Chef's velocity at 4 time instances.
	And we are interested in finding the total distance covered by Chef at time T.
	We can assume that Chef has started his travel at zero time moment.

	Input
	The first line contains an integer N denoting the number of test cases.
	The first line of each testcase contains an integer T, the time up to which we want to know the distance covered by
	Chef from time 0. Then 4 lines follow, each containing two integers: ct and cv. Here ct is the time instant and
	cv is the velocity at time ct. Please note, that we pick ct in such a way that cv comes out to be integer.
	In general the velocity of Chef is real number.

	Output
	For each test case output a single line containing a real number – the distance covered by the Chef
	in time interval 0 to T. Your answer will be considered as correct if it has relative error less than 10-10.

	Constraints
	    1 ≤ N ≤ 1000
	    1 ≤ T ≤ 3600
	    1 ≤ ct ≤ 3600
	    -1000000 ≤ cv ≤ 1000000
	    For each testcase values of ct are distinct.
***********************************************************************************************************************
Example

Input:
2
5
2 11
3 31
4 69
5 131
8
12 -480
13 -693
14 -960
15 -1287

Output:
173.750000
80.000000

**********************************************************************************************************************/
package medium.unsolved;

public class TravellingChefProblem {

	public static void main(String[] args) {

	}

}
