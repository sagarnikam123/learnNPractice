/**

	Kayaks

	Suppose we have an even number of people going on an excursion, and we would like to fit them into two-seated kayaks.
	All kayaks are identical, weighing 20kg each. Each person is described by two parameters, their strength and weight.
	The speed of a kayak can be calculated as the sum of strengths of both persons sitting in it,
	divided by the total weight of the loaded kayak (i.e., the weight of the kayak plus the weight of both persons).
	We would like to choose the allocation of people to kayaks so as to maximize the speed at
	which the whole whole group can travel, assuming that the group travels at the speed of the slowest kayak in it.

	Input
	First, 2≤ n 105, the number of people (n will always be even). Then, n pairs of integers follow,
	each pair describing one person: first, 50≤w≤100, the weight of the person (in kilograms), then 50≤p≤100,
	the strength of the person.

	Output
	Output one number: the maximum speed of the group which can be achieved by optimally choosing places for each person.
	The answer should be accurate up to 6 digits after the decimal point.
***********************************************************************************************************************
Example

Input:
4
50 50
50 60
70 100
100 60

Output:
0.842105

**********************************************************************************************************************/

package medium.unsolved;

public class Kayaks {

	public static void main(String[] args) {

	}

}
