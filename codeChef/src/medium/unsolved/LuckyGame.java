/**

	Lucky Game

	Chef, to entertain customers, decided to establish some kind of game in his restaurant. And here is what he invented:
	n players sit around a round table. There is n * m cards with unique numbers of range 1..n*m.
	Each player has m cards. In each set of the game each player selects some card and
	everyone shows his card at the same time. Card of ith player is compared to card of player p[i].
	If it’s number is greater than the number on card of player p[i], then ith gets a point.
	P is a permutation of sequence 0..n-1.
	But all customers when playing this game want to win. Chef on his side wants to please his customers.
	So, he decided to give cards in such way, that each player gets a point with probability larger than ½.
	But it appears to be a complicated task, so he asks you for help.

	Input
	First line of input contains T – number of test cases. Then T test cases follow.
	Each test case consists of two lines. First line contains two numbers – n and m. Second one – permutation p.

	Output
	For each test case, if there’s no solution output single line “No Solution” (without quotes),
	otherwise output n lines with cards for each player. ith line should contain m numbers in increasing order –
	numbers on ith player’s cards. Extra spaces at the end of the line are not allowed.

	Constraints
	    1 ≤ T ≤ 10
	    1 ≤ n, m ≤ 103

***********************************************************************************************************************
Example

Input:
2
1 1
0
3 3
2 0 1

Output:
No Solution
2 6 7
3 4 8
1 5 9

Explanation
For second test case, probability is 5/9 for each player to get a point.
**********************************************************************************************************************/
package medium.unsolved;

public class LuckyGame {

	public static void main(String[] args) {
	}

}
