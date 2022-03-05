/**

	Multiples of 3

	There are N numbers a[0],a[1]..a[N - 1]. Initally all are 0. You have to perform two types of operations :

	1) Increase the numbers between indices A and B by 1. This is represented by the command "0 A B"

	2) Answer how many numbers between indices A and B are divisible by 3. This is represented by the command "1 A B".

	Input :
	The first line contains two integers, N and Q. Each of the next Q lines are either of the form "0 A B" or
	 "1 A B" as mentioned above.

	Output :
	Output 1 line for each of the queries of the form "1 A B" containing the required answer for the corresponding query.
*************************************************************************************************************
Sample Input :
4 7
1 0 3
0 1 2
0 1 3
1 0 0
0 0 3
1 3 3
1 0 3

Sample Output :
4
1
0
2

Constraints :
1 <= N <= 100000
1 <= Q <= 100000
0 <= A <= B <= N - 1

**************************************************************************************************************/

package medium.unsolved;

public class MultiplesOf3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
