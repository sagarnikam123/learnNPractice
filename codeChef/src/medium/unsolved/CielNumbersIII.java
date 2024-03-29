/**

	Ciel Numbers III

	Tomya is a girl. She loves Chef Ciel very much.	Tomya also loves Ciel numbers.
	The definition of Ciel numbers are following.

	Ciel numbers are defined as the positive integers k
	such that d(k, 8) ≥ d(k, 5) ≥ d(k, 3) and d(k, i) = 0 for all i = 0, 1, 2, 4, 6, 7, 9,
	where d(k, i) denotes the number of the digit i in the decimal representation of the integer k.
	For example, the first few Ciel numbers are 8, 58, 85, 88, 358, 385, 538, 583, 588, 835, 853, 858, 885, 888, ....

	Now Tomya defines the x-pseudo Ciel numbers as follows for non-negative integers x:
	    A positive integer k is a 0-pseudo Ciel numbers if and only if k is a Ciel number.
	    For x ≥ 1, a positive integer k is a x-pseudo Ciel numbers if and only if
	    k is not a y-pseudo Ciel number for all 0 ≤ y < x
	    and, there exists a (x-1)-pseudo Ciel number s such that s have the same number of digits as k
	    and exactly one digit differ from k in their decimal notations.
	For example,
	583, 58588, 355388, and 5358388 are 0-pseudo Ciel numbers, and
	523, 58558, 355308, and 5354388 are 1-pseudo Ciel numbers, and
	123, 55558, 353308, and 5314388 are 2-pseudo Ciel numbers, and
	124, 55555, 333308, and 1314388 are 3-pseudo Ciel numbers.
	In this problem, your task is to find the largest x-pseudo Ciel number less than or equal to N.

	Input
	The first line contains an integer T, the number of test cases.Then T test cases follow.
	Each test case contains 2 integers x and N in one line.

	Output
	For each test case, print the largest x-pseudo Ciel number less than or equal to N.
	If there are no such numbers, print "-1" (excluding quotes).

	Constraints
	1 ≤ T ≤ 10000 (104)
	0 ≤ x ≤ 1000000000 (109)
	1 ≤ N < 10100000
	The sum of the length of N in one judge input file does not exceed 1000000 (106).
***********************************************************************************************************************
Sample Input
5
0 58600
2 128
1 5354389
1 1
2 1

Sample Output
58588
128
5354388
1
-1
**********************************************************************************************************************/
package medium.unsolved;

public class CielNumbersIII {

	public static void main(String[] args) {

	}

}
