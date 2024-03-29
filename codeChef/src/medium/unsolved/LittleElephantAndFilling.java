/**

	Little Elephant and Filling

	A Little Elephant from the Zoo of Lviv likes lucky strings, i.e., the strings that consist only of the lucky digits
	4 and 7. The Little Elephant has the string S such that each character in S is either the lucky digit (4 or 7) or
	the question mark ?. He can replace each question mark with one of the lucky digits in order to obtain
	the lucky string. He wants to know the number of different ways he can do this such that the resulting lucky string
	has no more than K different substrings. Help him and find this number. Note, that he need to replace
	all question marks.	Consider some example. From the string 47?4? we can obtain four lucky strings by replacing
	question marks with the lucky digits: 47444, 47447, 47744 and 47747. The corresponding numbers of different
	substrings are 11, 11, 12 and 11. For example, all different substrings of the string 47447 are
	4, 7, 44, 47, 74, 447, 474, 744, 4744, 7447 and 47447.

	Notes.
	Let S be some lucky string. Then
	    |S| denotes the length of the string S;
	    S[i] (1 ≤ i ≤ |S|) denotes the ith character of S (the numeration of characters starts from 1);
	    The string T of the length M is called a substring of S if for some k from 0 to |S| - M we have
	    T[1] = S[k + 1], T[2] = S[k + 2], ..., T[M] = S[k + M].

	Input
	The first line of the input file contains a single positive integer T, the number of test cases. T test cases follow.
	The first line of each test case contains two space separated integers N and K.
	The second line contains the string S of the length N.

	Output
	For each test case output a single line containing the answer for the corresponding test case.

	Constraints
	1 ≤ T ≤ 4747

	1 ≤ N, K ≤ 50

	For each string S from the input file we have that |S| = N and each character in S is either
	the lucky digit (4 or 7) or the question mark ?.
***********************************************************************************************************************
Example

Input:
2
2 2
??
3 7
?4?

Output:
2
4
**********************************************************************************************************************/
package medium.unsolved;

public class LittleElephantAndFilling {

	public static void main(String[] args) {

	}

}
