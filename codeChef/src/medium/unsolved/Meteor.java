/**

	Meteor

	A meteor fell on Andrew's house. That's why he decided to build a new home and
	chose a site where he wanted to build it. Let the whole area be a rectangular field of size NxM.
	Naturally, Andrew wanted to build a house on the entire area of the site.
	However, the Hazardous Construction Prevention Bureau did not let Andrew's plans come true.
	The Bureau said that some of the cells of the field are dangerous for the foundation. There are exactly K such cells.
	Andrew's not a poor man. And as anyone who has money, he saves money.
	Therefore, he is willing to buy not the whole area, but only a stripe of the same width.
	The house will occupy a rectangular area in this stripe with sides parallel to the sides of the original site.
	Andrew is asking for your help: for each Li, Hi - the lowest and the highest boundaries (inclusive), respectively
	- find the maximum area of ​​the house that Andrew can build on the relevant site.

	Input
	In the first line you are given three integers N, M and K.
	In the following K lines you are given different pairs of integers xi, yi - the coordinates of the dangerous cells.
	Next line contains an integer Q - the number of Andrew's queries
	The last Q lines describe the queries:
	each line contains two integers L and H - the lowest and the highest boundaries.


	Output
	In the output file, print Q lines, where i-th line contains the answer for i-th query.
	If you cannot build the house, then output 0.

	Constraints
	    1 ≤ N, M ≤ 1000
	    1 ≤ K ≤ N * M
	    1 ≤ xi ≤ N
	    1 ≤ yi ≤ M
	    1 ≤ Q ≤ 106
	    1 ≤ Li ≤ Hi ≤ N
***********************************************************************************************************************
Example

Input:
4 5 5
2 1
3 2
1 3
2 4
1 4
4
1 1
3 4
2 3
1 4

Output:
2
6
3
6

**********************************************************************************************************************/

package medium.unsolved;

public class Meteor {

	public static void main(String[] args) {

	}

}
