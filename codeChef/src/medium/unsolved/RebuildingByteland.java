/**

	Rebuilding Byteland

	Byteland is in the midst of a political crisis. The city is in almost a state of civil war among
	the two factions, "Coders", who rule the city and "non-Coders" who believe they have been oppressed far too long.
	Chef - Byteland's President - has decided to restructure Byteland residences such that
	Coders and non-Coders are forced to meet everyday!

	Byteland is a society of N houses - labeled 1 to N, connected by M bi-directional roads - labeled 1 to M.
	Each road starts at one of the houses and ends at some other house. No two roads meet anywhere, unless of course,
	they are connecting the same house to other	houses. Chef wants to assign Coders and non-Coders among the houses,
	such that, when a Coder leaves his house on one of the roads, he ends up at a non-Coder's house.
	Similarly, when a non-Coder leaves his house on one of the roads, he must also always end up at a Coder's house.

	The problem is, that under the current scheme of houses and roads, this might not be possible.
	Thus, Chef has decided to warp some	of the roads to another dimension. Warping a road to another dimension,
	makes the two houses, say A and B, that the road connected merge into a single house, say C. Roads that
	were connecting A to other houses are extended to C, and roads
	that were connecting B to other houses are also extended to C. A and B may be the same house
	after some sequence of warps. In this case, if the road is warped, it simply disappears.

	If it were up to Chef, he would warp every road in the City and create a Coder non-Coder paradise island; alas,
	he sometimes cannot do so. For example, only a few roads may be available for warping,
	since the other roads are too long. Also, it may be possible that after warping some roads,
	some road connects a house with itself. If such a road cannot be warped, it will be considered against Chef's wishes!

	The task of determining a strategy as to which roads to warp has come to you.

	Can you tell if it is possible to warp some of the roads that can be warped to fulfil Chef's dream of being able
	to assign Coders and non-Coders to houses, such that, every remaining road strictly connects a Coder's house and
	a non-Coder's house.

	You may assume that Byteland society is constructed in a way, such that, anyone can traverse from any house to
	any other house by using some sequence of roads. Also initially, no two roads connect the same pair of houses.

	Input
	The first Line contains a single number T, the number of test cases.
	The first line of each case contains two numbers, N and M, respectively.
	The next M lines contain two numbers each, x and y. Both x and y are between 1 and N, inclusive.
	They describe a bi-directional road between house x and house y. The roads are labeled from 1 to M
	in the order in which they appear in the input.	The next line contains a single number W, the number of roads that
	can be warped. The next line contains W unique numbers, separated by a single space. Each number is the label of a
	road that can be warped. All such numbers are unique and within 1 and M, inclusive.

	Output
	Print T lines, one for each test case. Output either "YES" if Chef's dream can be fulfilled, "NO" otherwise.

	Constraints
	1 ≤ T ≤ 100
	2 ≤ N ≤ 50
	1 ≤ M ≤ 200
	1 ≤ W ≤ M
***********************************************************************************************************************
Sample Input

2
3 3
1 2
2 3
3 1
2
1 2
5 7
1 3
1 4
3 4
2 4
2 5
4 5
1 2
2
2 4

Sample Output

YES
NO

Explanation
In the first Sample Input, warping either one of Road 1 or Road 2 is sufficient.
In the second Sample Input, warping both of Road 1 and Road 2 create a road that connects a house
to itself and all other possibilities of warping roads are insufficient to fulfil Chef's dream.

**********************************************************************************************************************/
package medium.unsolved;

public class RebuildingByteland {

	public static void main(String[] args) {

	}

}
