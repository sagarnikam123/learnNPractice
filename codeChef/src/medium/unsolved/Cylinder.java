/**

	Cylinder

	Chef wants to make a steel container. The container should be of cylindrical form and should have as
	large volume as possible. He has a rectangular steel sheet of the size W × H for this. His plan is the following:

	    At first he cuts the sheet into two rectangular sheets by horizontal or vertical cut.
	    Then he takes one of the obtained sheets and cuts out two equal non-overlapping circles from it.
	    Let the radius of each circle be R.Finally he cuts out the rectangular sheet of the size 2πR × A for
	    maximal possible A from the second sheet, with sizes parallel to the sides of the second sheet.
	    He will use it as a lateral surface of the container. Namely, he rolls up the obtained sheet
	    along the side 2πR to obtain the lateral surface of cylinder.
	    Thus, Chef obtains the cylindrical container of height A and radius R, having bottom and top made from steel.

	Chef is aware of your advanced math abilities and asks you for help to find the optimal container.
	Output the maximum volume of the container that could be achieved by the above scheme.

	Input
	The first line of the input contains an integer T denoting the number of test cases.
	The description of T test cases follows. The only line of each test case contains two space-separated integers W and H.

	Output
	For each test case, output a single line containing the maximum volume of the container.
	Your answer will be considered as correct if it has a relative error less than 10−11.
	More formally, if the correct output is A and your output is B,
	your output will be considered as correct if and only if |A − B| ≤ 10−11 * A.

	Constrains
	    1 ≤ T ≤ 400000 (4 * 105)
	    1 ≤ W ≤ 999999 (106 − 1)
	    1 ≤ H ≤ 999999 (106 − 1)
***********************************************************************************************************************
Example

Input:
3
4 4
2 3
1 6

Output:
3.471819240663
0.824190535860
0.785398163397

Explanation
In all examples blue circles are top and bottom of container. Yellow rectangle is used to create lateral surface.
Namely, we roll up it along the direction of blue arrow to match green borders.

Example case 1:
				R ≅ 0.63662, A ≅ 2.72676.
Example case 2:
				R ≅ 0.36218, A = 2.
Example case 3:
				R = 0.5, A = 1.

**********************************************************************************************************************/
package medium.unsolved;

public class Cylinder {

	public static void main(String[] args) {

	}

}
