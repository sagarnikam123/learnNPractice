/**

	Polo the Penguin and the Lucky String

	Polo, the Penguin, likes lucky strings - the strings that consist only of lucky digits 4 and 7.
	He has a lucky string S. Digits in this string are numbered from left to right starting with 1.
	He performs the following operations on the string while it is possible to do so:

	    Find a set of all positions, P, such that for every position i in P, S[i] = 4 and S[i+1] = 7.
	    (For example, if S = 744744747, then P = {3, 6, 8}.) Add all elements in P to the result.
	    If there is no such position, then STOP.
	    Erase all digits in string S with positions i and i + 1 for all i in the set P.
	    After erasing all such digits from S repeat Step 1. (For example, the new S = 744)

	Find the result that he will get at the end.

	Input
	The first line of the input contains an integer T denoting the number of test cases.
	The description of T test cases follows.
	The first line of each test case contains a single integer N denoting the size of the string S.
	The second line contains the lucky string S.

	Output
	For each test case, output a single line containing the answer to the corresponding test case.

	Constraints
	    1 ≤ T ≤ 100,000
	    1 ≤ |S| ≤ 100,000
	    The total length of all strings will not exceed 100,000
***********************************************************************************************************************
Example
Input:
  2
  4
  4747
  10
  4447477747

Output:
  4
  20

Explanation
Example case 1. In this case, there is just a single iteration. Since P = {1, 3}, the answer is 1 + 3 = 4.
Example case 2. In this case, there are three iterations. On the first iteration P = {3, 5, 9}.
On the second iteration S = 4477, P = {2}. On the third iteration S = 47, P = {1}.
So the answer is 3 + 5 + 9 + 2 + 1 = 20.

**********************************************************************************************************************/

package medium.unsolved;

public class PoloPenguinAndLuckyString {

	public static void main(String[] args) {

	}

}
