/**
	
	Where the Wild Things Are
	
	Recently, Max has visited the place where the Wild Things are again. He was very happy to know,
	that the monsters are living in peace now.
	His friend Carol was so excited about Max's coming back, that he proposed everyone a brand new game. 
	Unfortunately, all the Wild Things refused to play the game, except Max and K.W.,
	so there were only three players playing the game.
	The area, where the game takes place, is the Cartesian plane(link).
	There are N interesting points on the plane. Each interesting point has integer coordinates.
	 Also, all the interesting points form a strictly convex polygon(link).
	There is no need to explain the rules of the game, but it's quite important to mention the preparation process:
	In order to play the game, the players(Max, K.W. and Carol) must choose three different interesting points
	and plant themselves there. Also, they must choose some positive integer S.
	
	Let's assume, that Max's interesting point is A, K.W.'s - B and Carol's - C.
	If the area of triangle ABC is greater than or equal to S, then the game will be awesome.
	Otherwise, it will be awful.
	
	Now Max is on his way home. His head is filled up with the memories about the wonderful game he used to play with
	his friends. But there's the thing, that annoys him: he remembers, that he played the game Q times, but
	he can't recall any interesting point chosen by him!
	
	Max exactly remembers, that in the beginning of i'th game K.W. chose point B = Bi,
	Carol chose point C = Ci and S was equal to Si.
	Also, he remembers, that all the games were awesome.
	So, you are to calculate the number of different interesting points,
	that could be chosen by Max as A in the beginning of i'th game.
	This number can be equal to zero(in that case we can conclude, that i'th game wasn't awesome - anyway,
	just output zero).
	
	Input
	The first line of a test case contains two integers N and Q,
	denoting the number of the interesting points and the number of times Max played the game.

	The next N lines contain two integers Xi and Yi each, denoting coordinates of i'th interesting point.
	The points are 1-indexed.
	The next Q lines contain three integers Bi, Ci and Si each. In the beginning of i'th game K.W.
	chose point Bi'th interesting point, Carol chose Ci'th interesting point and S was equal to Si.
	It's guaranteed, that the interesting points form a strictly convex polygon and
	are given in clockwise or counterclockwise order.
	It's also guaranteed, that there are no three vertices in the input that lie on one line and no point is given twice.
	
	Output
	For each round of the game, output a single line containing the number of different interesting points, 
	that could be chosen by Max as A in the beginning of the corresponding game.
	
	Constraints
	3 ≤ N ≤ 60000;
	1 ≤ Q ≤ 250000;
	|X|, |Y| ≤ 108, for each interesting point;
	1 ≤ B != C ≤ N, S ≤ 1018, for each game.
***********************************************************************************************************************
Example

Input:
4 2
0 0
4 0
7 3
7 7
1 4 1
1 4 100

Output:
2
0

Explanations
For the first query, A could be equal to both 2 and 3;
For the second query, there are no possible variants for A.	
**********************************************************************************************************************/

package medium.unsolved;

public class WhereWildThingsAre {

	public static void main(String[] args) {

	}

}
