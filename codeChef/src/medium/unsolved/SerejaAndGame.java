/**

	Sereja and Game

	Sereja and Dima play the game. The rules are as follows:

	Initially, there are n cards on the table, each card has a positive integer written on it.
	At the beginning Sereja writes down the number 0 on the sheet of paper.
	Then players pick cards from the table alternately. When a player picks a card,
	he writes down the greatest common divisor of a number that is written on a card and
	a number that was last written on the sheet of paper.
	Then the player throws this card away, so it can never been taken again.
	A player loses if after his turn the number, written on the piece of the paper is 1.
	A player also loses, if he isn't able to make a move.

	Now Sereja is interested in the following two things:

	    what is the probability of Sereja's victory if he makes the first move and the both players play optimaly
	    what is the probability of Sereja's victory if he makes the first move and the both players make moves randomly

	If player makes moves randomly, he chooses a card with equal probability among those that remained on the table.

	Input
	The first line of the input contains an integer T denoting the number of test cases.
	The description of T test cases follows.
	The first line of each test case contains the number n — the amount of cards present on the table
	at the beginning of the game. The second line contains integers a1, a2, ..., an — the numbers written on the cards.

	Output
	For each test case output two numbers denoting answers on Sereja's questions.
	Output the integer part of the answer to the first question and the answer to the second question with
	exactly four digits after the decimal point.

	Constraints
	    1 ≤ T ≤ 10
	    1 ≤ n ≤ 100
	    1 ≤ aj ≤ 100
***********************************************************************************************************************
Example

Input:
4
5
6 10 15 22 28
5
2 4 8 16 32
4
2 4 8 16
4
1 2 3 4

Output:
0 0.4000
1 1.0000
0 0.0000
1 0.5833

**********************************************************************************************************************/

package medium.unsolved;

public class SerejaAndGame {

	public static void main(String[] args) {

	}

}
