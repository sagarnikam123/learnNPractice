/**

	Arigeom Beats

	Our amazing Chef recently met his best friend Joe at his place. Joe is a musician and owns a wide variety of musical
	instruments. He got introduced to the Arigeom beats in a music training session at Los Angeles. Arigeom beats,
	as the name suggests, is a combination of two series of beats. One of them has all its frequencies in arithmetic
	progression while the other series of beats has all its frequencies in geometric progression.
	A series of beats is represented by a beat notation, which is the sequence of the frequencies at
	which the beats are played.	To play Arigeom beats, two digital musical instruments are played simultaneously in
	front of an instrument known as Sono Phone. One instrument plays the beats in arithmetic progression while the other
	instrument plays the beats in geometric progression. Sono Phone will capture the beats played by each of the two
	instruments and process them into Arigeom beats. It will merge the beats, sort the beats in ascending order, and
	remove duplicate beats.	For example, suppose one instruments plays the following beats notation: (2, 5, 8, 11),
	an arithmetic progression, while the other plays (2, 4, 8, 16), a geometric progression. The resulting Arigeom beat
	notation recorded by Sono Phone will be (2, 4, 5, 8, 11, 16). Because Joe knows how to play Arigeom beats,
	owns the instruments, and has his friend Chef with him as well, he can't wait anymore to play the beats.
	Joe has an Arigeom beat notation from his music book and decides that he would play the beats in
	arithmetic progression while Chef will play the beats in geometric progression. The beat notation consists of N beat
	frequencies F1, F2, ..., FN. However, he is now confused as to which subset of the beats has to be played by Chef
	and which one by himself. Help Joe and Chef figure out the subsets of beats to be played by Joe and Chef.

	Input
	The first line of the input contains a single integer T denoting the number of test cases.
	The description of T test cases follows. For each test case, the first line contains an integer N.
	The description of T test cases follows. For each test case, the first line contains an integer N.
	The second line contains N space-separated integers F1, F2, ..., FN.

	Output
	For each test case, output two lines. The first line contain the beat notation to be played by Joe
	(in arithmetic progression). The second line contain the beat notation to be played by Chef
	(in geometric progression). Each beat notation must contain at least two beats. The beats in each beat notation must
	be sorted in ascending order. If there are more than one possible pair of beat notations, output any one of them.

	Constraints
	1 ≤ T ≤ 100
	2 ≤ N ≤ 10,000
	1 ≤ Fi ≤ 100,000
	F1 < F2 < ... < FN
	It is guaranteed that at least one pair of valid beat notations exists.
***********************************************************************************************************************
Example
Input:
4
6
2 4 5 8 11 16
5
1 2 3 4 5
8
1 3 9 10 19 27 28 81
6
1 4 7 10 13 25

Output:
2 5 8 11
2 4 8 16
1 2 3 4 5
1 2 4
1 10 19 28
1 3 9 27 81
1 7 13
4 10 25

Note
In last example, the common ratio is 2.5 (non-integer) even
when all the elements of geometric progression sequence are integers.
**********************************************************************************************************************/
package medium.unsolved;

public class ArigeomBeats {

	public static void main(String[] args) {

	}

}
