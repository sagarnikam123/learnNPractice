/**

	A Bowling Game

	Mary and Johnny are playing a game with bowling pins. There is a row of N bowling pins.
	Mary and Johnny alternatively take their turn to bowl. They are such skillful bowling players that at each
	player's turn, any of them can take out any row of adjacent bowling pins, provided that the number of pins
	taken out is no more than K. It is important to notice that all the pins taken out must be adjacent. It is
	impossible to knock down pins separated by a greater distance. Whoever knocks out the last bowling pin wins the game.
	You have just come down to watch Mary and Johnny playing the game. Some pins are already removed and now
	it is Mary's turn. With a good knowledge of mathematical games, you know that it is possible to compute
	in advance whether Mary or Johnny will win the game, provided that the winner always plays the perfect strategy.
	So why not impress your two friends by telling them who will win? If Mary could win the game, show her a winning move.
	Since Mary always wants to win the game as fast as possible, if there are more than one possible winning moves,
	show her the move that has the most number of pins taken out. If there are still several solutions,
	show her the move in which the pins taken out are as near to the left as possible.

	Input
	The first line contains t, the number of test cases (about 15). Then t test cases follow. Each test case has
	the following form:
	    The first line contains two numbers N and K (1 ≤ N ≤ 2000, 1 ≤ K ≤ 20)
	    The second lines contains a string of N characters 0 or 1 (without spaces) representing the row of N bowling pins.
	    A character 0 means the bowling pin at the corresponding position is already taken out whereas a character
	    1 means the bowling pin is still in its position.
	Each test case is separated by a blank line.

	Output

	For each of the test case, print either the string "Mary wins" or "Johnny wins" depending on who will win the game.
	If Mary could win the game, in the next line print N characters 0 or 1 representing the row of N bowling pins after
	Mary's move. Use the same format as that of the input data.
	Remember to print a blank line after the output for each test case.
***********************************************************************************************************************
Example
Input:
2

3 2
111

8 3
10110111

8 4
11111111

Output:
Mary wins
101

Johnny wins

Mary wins
11000011

Output details
Case 1: Mary knocks down the middle pin. Regardless of which pin Johnny takes out in the next move, Mary always takes out the remaining pin and wins the game.
Case 2: Mary will lose the game regardless of which move she plays. For example if she takes out the rightmost pin, it is easy to verify that Johnny will always win if he then takes out the leftmost pin.
Case 3: There is more than one move that allows Mary to win the game. The four middle pins make the most number of pins that Mary can take out.
**********************************************************************************************************************/
package medium.unsolved;

public class BowlingGame {

	public static void main(String[] args) {

	}

}
