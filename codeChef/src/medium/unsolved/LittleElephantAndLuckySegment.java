/**

	Little Elephant and Lucky Segment

	The Little Elephant from the Zoo of Lviv likes lucky digits. Everybody knows that the lucky digits are digits 4 and 7.
	This time he has an array A that consists of N integers: A[1], A[2], ..., A[N]. Let F4(x) be the number of digits 4
	in the decimal representation of x, and F7(x) be the number of digits 7 in the decimal representation of x.
	For example, F4(5) = 0, F4(4467) = 2 and F7(457747) = 3. Consider some pair of integers L and R such that
	1 ≤ L ≤ R ≤ N. Let C4 be the total number of digits 4 in decimal representation of integers
	A[L], A[L + 1] ..., A[R], i. e., C4 = F4(A[L]) + F4(A[L + 1]) + ... + F4(A[R]).
	Similarly, let C7 be the the total number of digits 7 in decimal representation of integers
	A[L], A[L + 1] ..., A[R], i. e., C7 = F7(A[L]) + F7(A[L + 1]) + ... + F7(A[R]).
	The Little Elephant wants to know the number of such pairs (L; R) for which C4C7 ≤ R − L + 1.
	But he believes that the number 2 is unlucky. Hence he discards all pairs where C4 = 2 or C7 = 2.
	Help the Little Elephant to find the answer for the problem.Remark. 00 = 1. It is a standard mathematical definition.

	Input
	The first line of the input contains a single integer T, the number of test cases. Then T test cases follow.
	The first line of each test case contains a single integer N, the size of the array A for the corresponding test case.
	The second line contains N space separated integers A[1], A[2], ..., A[N].

	Output
	For each test case output a single line containing the answer for the corresponding test case.

	Constraints
	1 ≤ T ≤ 3
	1 ≤ N ≤ 105
	1 ≤ A[i] ≤ 109
***********************************************************************************************************************
Example

Input:
3
3
1 2 1
4
47 2 4 77548
1
777


Output:
6
5
1

Explanation
Case 1. Here C4 = C7 = 0 for all pairs (L; R). So 00 = 1 ≤ R − L + 1 for each pair. There are 6 pairs (L; R) in all:
		(1; 1), (1; 2), (1; 3), (2; 2), (2; 3), (3; 3). So the answer is 6.
Case 2. Here we have 10 pairs of (L; R) in all. Consider them all.
    L = 1, R = 1: C4 = 1, C7 = 1, C4C7 = 11 = 1 ≤ 1 = R − L + 1. The pair is counted.
    L = 1, R = 2: C4 = 1, C7 = 1, C4C7 = 11 = 1 ≤ 2 = R − L + 1. The pair is counted.
    L = 1, R = 3: C4 = 2, C7 = 1, C4C7 = 21 = 2 ≤ 3 = R − L + 1. But the pair is not counted since C4 = 2.
    L = 1, R = 4: C4 = 3, C7 = 3, C4C7 = 33 = 27 > 4 = R − L + 1. The pair is not counted.
    L = 2, R = 2: C4 = 0, C7 = 0, C4C7 = 00 = 1 ≤ 1 = R − L + 1. The pair is counted.
    L = 2, R = 3: C4 = 1, C7 = 0, C4C7 = 10 = 1 ≤ 2 = R − L + 1. The pair is counted.
    L = 2, R = 4: C4 = 2, C7 = 2, C4C7 = 22 = 4 > 3 = R − L + 1.
    	The pair is not counted. It is also not counted since C4 = 2, and also since C7 = 2.
    L = 3, R = 3: C4 = 1, C7 = 0, C4C7 = 10 = 1 ≤ 1 = R − L + 1. The pair is counted.
    L = 3, R = 4: C4 = 2, C7 = 2, C4C7 = 22 = 4 > 2 = R − L + 1.
    	The pair is not counted. It is also not counted since C4 = 2, and also since C7 = 2.
    L = 4, R = 4: C4 = 1, C7 = 2, C4C7 = 12 = 1 ≤ 1 = R − L + 1. But the pair is not counted since C7 = 2.
As we see there are exactly 5 pairs (L; R) that satisfy required constraints.
Case 3. Here we have the only pair (L; R) = (1; 1) for which C4 = 0, C7 = 3 and C4C7 = 03 = 0 ≤ 1 = R − L + 1.
 		So it is counted, and the answer is 1.
**********************************************************************************************************************/
package medium.unsolved;

public class LittleElephantAndLuckySegment {

	public static void main(String[] args) {

	}

}
