/**

	Ripple-Carry Adder

	Amortized analysis deals with analyzing the average amount of work done per operation over a series of operations.
	In some cases, the average amount of work done per operation is dramatically less than the worst case analysis indicates.
	A typical example is counting the number of times a bit is flipped in a ripple-carry counter.
	A ripple-carry counter is an implementation of a binary counter
	where incrementing from B to B+1 is done in the following manner. Say the binary number is represented as
	B = bn-1b_n-2...b_1b0 where bi is the bit corresponding to 2i. B is increased to B+1 in the following manner:

	i := 0
	while bi == 1
	   bi := 0
	   i := i+1
	bi := 1

	This doesn't account for overflow when increasing from 2n-1 to 2n, but we'll ignore that error for this problem.
	Each time a bit is changed from 0 to 1 or from 1 to 0 we say the bit is "flipped".
	In the worst case, we may have to flip every bit. However, a standard result says
	the average number of bits flipped per increment when counting from 0 to 2n-1 is less than 2.
	Being the curious sort, you decide to explore this result in a slightly more general setting.
	That is, you want to know how many bits are flipped when the counter is incremented from a number a to b where a < b.

	Input
	The first line denotes the number of test cases (about 20).
	Each test case consists of three lines. The first contains a single integer n between 1 and
	100,000 denoting the number of bits in the counter. The second line contains the number a written in binary and
	the third line contains the number b written in binary. Both a and b are described using exactly n bits.

	Output
	The output for each test case consists of a single line that describes the total number of bits flipped when
	the counter is increased from a to b. This number should be expressed in binary with
	the most significant bit being 1 (i.e. no leading zeros should pad the output).
***********************************************************************************************************************
Example

Input:
3
1
0
1
2
00
11
3
011
100

Output:
1
100
11


**********************************************************************************************************************/

package medium.unsolved;

public class RippleCarryAdder {

	public static void main(String[] args) {

	}

}
