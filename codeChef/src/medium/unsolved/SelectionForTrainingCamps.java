/**

	Selection for Training Camps

	Cricket is almost like a religion in India and many young kids attend coaching camps every year.
	This year there are total N kids at the camp and the coach is forming teams so that kids within a team can
	practice and compete with each other. As we know that kids are afraid of tall and heavy persons,
	they are afraid to get in to a team having such player. More formally, kid A is afraid of another kid B
	if weight(A) ≤ weight(B) and height(A) ≤ height(B). You can assume that no two kids have both height and
	weight equal to each other. Here is how the teams are formed by the coach.
	All the N students are lined up. For R = 1,2,3,... in order, in the Rth round the coach calls all the students
	who are not afraid of any one in the line. They all come forward, form a team number R and leave for practice.
	This process is repeated as long as there are kids still in the line, yet to form a team. Given the height and
	weight of each of the N students, find the number of teams formed and the number of kids in each of them.

	Input
	First line contains T, number of test cases ( 1 ≤ T ≤ 3 ). T cases follow. Each case starts with an integer N
	( number of students, 1 ≤ N ≤ 100,000 ), each of the following N lines contains integers Hi Wi
	( height and weight of the ith kid, 1 ≤ Hi, Wi ≤ 109.
	No two kids have their corresponding Hi and Wi equal to each other ).

	Output
	For each case, output K, the total number of teams formed, in the first line. In the second line,
	output K integers S1 S2 ... Sk , where Si is the number of kids in the ith team, separated by space.
***********************************************************************************************************************
Example

Input:
2
3
3 4
5 5
4 3
6
7 7
4 7
5 5
1 2
3 4
2 1

Output:
2
1 2
4
1 2 1 2


Explanation:
Case 1 : There are 3 kids initially in the line, (3,4) (5,5) (4,3)
In the first round, only (5,5) comes forward and he leaves. (3,4) and (4,3) are both afraid of (5,5).
In the second round, both (3,4) and (4,3) come forward, as they are not afraid of each other.

Case 2 :
Round 1 : Only (7,7) comes forward, as all others are afraid of him
Round 2 : (4,7) and (5,5) form a team
Round 3 : (3,4) comes forward, as (1,2) and (2,1) are afraid of him
Round 4 : (1,2) and (2,1) are not afraid of each other and so forms the last team.

**********************************************************************************************************************/
package medium.unsolved;

public class SelectionForTrainingCamps {

	public static void main(String[] args) {

	}

}
