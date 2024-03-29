/**

	Retail Shop

A retail shop has announced a reward point scheme on pairs of items procured by customers.
No point is available on purchase of a single item. The scheme is applicable
for n (n > 0) different types of items available in the shop. However,
a particular customer will be eligible to get reward for upto 7 out of these n types.

Naturally, these items must be bought as pairs.
For every pair of such items (may or may not be of similar type), there is an associated point,
which may be different for different pairs. After billing,
the computer calculates the maximum reward point that the customer can get by suitably pairing the items (upto 7)
marked by the customer. Only two items of a particular type will be considered for reward scheme.
There is no reward point for more than two items procured of a particular type.
Calculate the maximum reward points that a customer can get after
he has purchased a few items and marked the ones for which he/she wants reward points.

For example, suppose, n=4 and the pairwise reward metrics are as follows.
... 	Type-1 	Type-2 	Type-3 	Type-4
Type-1 	55 	60 	4 	25
Type-2 	60 	45 	75 	23
Type-3 	4 	75 	78 	32
Type-4 	25 	23 	32 	15

Now, if the customer has purchased 2 items each of type 1 and 2 and 4 items of time 3, and
has marked 1, 2, 3 as the items on which he/she wants the reward points,
the pairing should be (2,3) => 75, (3,2) => 75 and (1,1) => 55 giving a total of 205 points.
Note that there were 4 items of type 3, but only 2 should be used for reward point calculations.

The program should use n = 10 and the following reward matrix.
55 	60 	4 	25 	18 	10 	12 	8 	11 	50
60 	45 	75 	23 	27 	20 	24 	7 	33 	12
4 	75 	78 	32 	36 	30 	36 	6 	12 	65
25 	23 	32 	15 	45 	40 	48 	5 	14 	23
18 	27 	36 	45 	54 	50 	60 	4 	15 	12
10 	20 	30 	40 	50 	60 	72 	3 	32 	34
12 	24 	36 	48 	60 	72 	84 	2 	23 	34
8 	7 	6 	5 	4 	3 	2 	1 	34 	123
11 	33 	12 	14 	15 	32 	23 	34 	65 	48
50 	12 	65 	23 	12 	34 	34 	123 	48 	71

Input
The first line contains an integer (say, m) - the number of test cases (not more than 500).
It is followed by m pairs of lines, each corresponding to a test case. The first line of a pair contains 10 integers,
identifying the number of items of each type the customer has bought (each integer is not more than 100).
He always buys even number of items.The second line is an array of 10 bits corresponding to the 10 different item types.
A bit being ‘1’ indicates that the customer wants a reward on that item,
a ‘0’ indicates that the customer does not want reward on the item. There will be at-most 7 '1's in this array.
Also, the customer will choose a type iff he has bought atleast 2 items of that type.
Each entry in a line is separated by a single blank space.

Output
Output m lines, one for each test case. The output for a test case should contain the maximum reward points that
the customer can gain upon optimally pairing 2 items of the types he has chosen.
***********************************************************************************************************************
Example
Input:
3
2 4 6 2 0 0 6 4 2 2
1 1 0 1 0 0 1 1 0 0
0 2 4 2 0 6 2 8 2 2
0 1 1 0 0 1 1 1 0 0
2 4 2 2 2 6 6 6 2 2
1 1 0 0 0 1 1 0 0 0

Output:
220
295
264

**********************************************************************************************************************/


package medium.unsolved;

public class RetailShop {

	public static void main(String[] args) {

	}

}
