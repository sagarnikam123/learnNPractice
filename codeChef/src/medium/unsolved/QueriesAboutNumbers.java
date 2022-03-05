/**

	Queries About Numbers

	Chef loves number theory very much. Now it is time to solve a new kind of problem.

	There is given a natural number N. Chef has to answer Q queries of the form T K.

	Here T is the type of query and K is the natural number.

	If T=1, Chef must find the number of natural numbers which is divisor of both N and K.

	If T=2, Chef must find the number of natural numbers which is divisor of N and is divisible by K.

	If T=3, Chef must find the number of natural numbers which is divisor of N and is not divisible by K.


	Chef can solve all these queries, but you will be hungry for night if this happens, because Chef will not have free time to cook a meal.
	Therefore you compromise with him and decided that everyone must do his/her own job. You must program and Chef must cook.

	Input
	There will be 2 numbers in the first line: N and Q.
	Q lines follow with 2 numbers each: T and K

	Output
	For each of the Q lines you must output the result for corresponding query in separat line.
*******************************************************************************************************************
Example

Input:
12 6
1 6
1 14
2 4
2 3
3 12
3 14

Output:
4
2
2
3
5
6

Explanation

Numbers for each query:

{1,2,3,6}

{1,2}

{4,12}

{3,6,12}

{1,2,3,4,6}

{1,2,3,4,6,12}

Constraints
1<=N<=1012

1<=Q<=5*105

1<=T<=3

1<=K<=1012

*******************************************************************************************************************/

package medium.unsolved;

public class QueriesAboutNumbers {

	public static void main(String[] args) {

	}

}
