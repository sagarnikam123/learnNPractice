/**

	Careful Calculation
	
	You are given a single integer N. It's very large, so it's given as a product of several prime powers:
	N = p1k1 p2k2 ... pmkm. Let's define φ(N) as Euler's totient function -- the number of positive integers less than
	or equal to N that are relatively prime to N.
	Let N1 = φ(N). Let N2 = φ(N1). Further, let NX = φ(NX-1) for X > 2.
	Your task is to find the smallest positive integer X such that NX = 1. 
	Only careful calculation might help... or will it be enough?

	Input
	The first line of the input file contains one integer T -- the number of test cases (no more than 10).
	Each test case is described by a line containing one positive integer m followed by m lines,
	each containing two integers pi and ki (1 < pi < 100000, 1 ≤ ki ≤ 109) separated by a single space.
	It's guaranteed that all pi are pairwise distinct prime numbers in each test case 
	(note that the upper limit on m can be determined from this constraint).

	Output
	For each test case output just one line containing the required smallest positive integer X.
***********************************************************************************************************************
Example

Input:
1
2
2 2
3 1

Output:
3

Explanation:
In the example test case N = 22*31 = 12. Then N1 = 4, N2 = 2 and NX = 1 for X ≥ 3, so the answer is 3.	

**********************************************************************************************************************/

package medium.unsolved;

public class CarefulCalculation {

	public static void main(String[] args) {

	}

}
