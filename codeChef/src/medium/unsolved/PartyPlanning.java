/**

	Party Planning

	Bilbo is planning his eleventy first birthday. Yes, he will soon be 111 years old.
	He has to decide whom all to invite to the Party. There are N families in the Shire (numbered 1 to N), and
	some families hate others. For example, the Bagginses of Bag End are on bad terms with the Sackville Bagginses.
	Each family declares which among the N families do they hate the most (we call this simply the "enemy" of the family).

	Given the N enemies of each of the N families, Bilbo is interested in how many ways can he invite people to his party,
	such that he does not simultaneously invite some family as well as its enemy. Since the number may be large,
	output the answer modulo 1000000007. Two ways are considered different if the set of families invited differ.


	Input
	The first line consists of the number of test-cases, T.
	Each test case begins with a line having a single integer N.
	This is followed by a line having N integers: denoting the enemies of each of the N families.

	Output
	For each test-case, output the number of ways modulo 1000000007 (109 + 7).

	Constraints
	    T ≤ 10
	    2 ≤ N ≤ 105
	    No family is "enemies" with itself
***********************************************************************************************************************
Example

Input:
3
4
2 3 4 1
3
2 1 2
2
2 1

Output:
7
5
3

Explanation
The first test case: {}, {1}, {2}, {3}, {4}, {1,3}, {2,4}
The second test case: {}, {1}, {2}, {3}, {1,3}
The third test case: {}, {1}, {2}
***********************************************************************************************************************/
package medium.unsolved;

public class PartyPlanning {

	public static void main(String[] args) {

	}

}
