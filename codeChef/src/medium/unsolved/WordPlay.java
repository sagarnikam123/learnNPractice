/**

	Word Play

	Alice and Bob decide to play the game "CCWordPlay". CCWordPlay is played as follows:
	Initially, there is a r * c grid of uppercase English alphabets, where r denotes the number of rows, and
	c denotes the number of columns.
	In the player's turn, this player should make a valid dictionary word using the
	active alphabets on the board. Initially all the alphabets on the board are active.
	If a player is unable to make any such word, then the player lost the game. If a player makes a word,
	then all the alphabets used to make the word should be considered inactive till the end of the game.
	The turns of players alternate, until one of them loses. As usual Alice plays first.
	You are to say, if both Alice and Bob play optimally, who will win the game?

	Note 1:
	The alphabets need not be adjacent in any way.
	IBC
	DEF
	AJN

	In the above configuration, "CAN", is a valid word.
	Note 2:
	Consider a 2 * 2 of the grid
	BE
	ED

	Let the dictionary be:
	BED
	BEE

	Say a player made the word "BED". This word can be make in two ways:
	--
	E-

	or

	-E
	--

	Note that after making "BED", not all the E(s) are inactive. However, after "BEE" is created, both Es are inactive,
	namely the board will be
	--
	-D

	Input
	The first line of input contains D denoting the number of words in the dictionally.
	The next D lines contain words in the dictionally.
	Then the next line contains 2 space-separated integers denoting r and c.
	After that, the next line contains an integers T denoting the number of boards.
	Then the T boards are follow without any extra spaces and extra blank lines.

	Output
	For each board, print a single line containing,
	"Alice", if Alice wins, or "Bob", if Bob wins. (Quotes are only for clarity).

	Constraints
	1 ≤ D ≤ 500000
	1 ≤ T ≤ 1000
	1 ≤ r, c ≤ 4
	1 ≤ The length of each word ≤ r * c

	The dictionary does not contain the same word more than once.
	At least one of the following 3 conditions must be hold:
	    r = 4, c = 4, T ≤ 10
	    r = 3, c = 4, T ≤ 100
	    r ≤ 3, c ≤ 3, T ≤ 1000
***********************************************************************************************************************
Samples

Input:
5
BED
BAD
RED
BREED
BEER
3 3
2
DER
RAD
FEE
BAR
BEE
RAN

Output:
Bob
Alice

**********************************************************************************************************************/

package medium.unsolved;

public class WordPlay {

	public static void main(String[] args) {

	}

}
