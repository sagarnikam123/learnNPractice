/*

	Magic sequence
	
	Johnny has invented a magic sequence. Each element of the sequence is defined by the same recursive definition - 
	take some linear combination of previous elements (whose coefficients are fixed) and add to them the n-th powers 
	of some integers. Formally: Xn = Xn-1*a1 + ... + Xn-i*ai + b1*d1n + ... + bj*djn, for some integer constants 
	p,q,a1,...,ap,b1,..., bq,d1,..., dq. Of course, as the values can quickly grow, he computed them modulo 
	a fixed value: 106. He wrote many consecutive values of the sequence, but then he lost most of his work. 
	All he has now, is 10 consecutive values taken from somewhere in the sequence (he doesn't know at what n they begin),
	and the recursive rule. And he would like to recover the sequence, or at the very least, to be able 
	to write the next 10 values taken from the sequence.
	
	Input
	First, two integers, 0≤p≤4, 0≤q≤4. Then come the descriptions of the coefficients, -100 ≤ a1,...,ap,b1,...,
	bq,d1,..., dq ≤ 100. Then, the following 10 integers are Xn,Xn+1,...,Xn+9 for some unknown n.
	
	Output
	Output 10 integers - Xn+10,Xn+11,...,Xn+19
***********************************************************************************************************************
Example

Input:
1 1
1
1
1
11 12 13 14 15 16 17 18 19 20

Output:
21 22 23 24 25 26 27 28 29 30

Explanation:
xn=xn-1+1

Input:
1 1
1 
1 
2 
1 3 7 15 31 63 127 255 511 1023
Output:
2047 4095 8191 16383 32767 65535 131071 262143 524287 48575
Explanation:
xn=xn-1+2n=...=2n+2n-1+...+1=2n+1-1

Input:
2 0
1 1
1 1 2 3 5 8 13 21 34 55
Output:
89 144 233 377 610 987 1597 2584 4181 6765
Explanation:
xn=Fib(n) is the n-th Fibonacci number

Input:
2 1
2 -1 
2 
1 
0 1 4 9 16 25 36 49 64 81
Output:
100 121 144 169 196 225 256 289 324 361
Explanation:
xn=n2	
**********************************************************************************************************************/
package medium.unsolved;

public class MagicSequence {

	public static void main(String[] args) {

	}

}
