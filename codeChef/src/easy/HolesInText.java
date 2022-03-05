/**************************************************************************************************************************

 	Holes in the text - solved

	Chef wrote some text on a piece of paper and now he wants to know how many holes are in the text.
	What is a hole? If you think of the paper as the plane and a letter as a curve on the plane,
	then each letter divides the plane into regions.
	For example letters "A", "D", "O", "P", "R" divide the plane into two regions so we say these letters each have one hole.
	Similarly, letter "B" has two holes and letters such as "C", "E", "F", "K" have no holes.
	We say that the number of holes in the text is equal to the total number of holes in the letters of the text.
	Help Chef to determine how many holes are in the text.

	Input
	The first line contains a single integer T <= 40, the number of test cases. T test cases follow.
	The only line of each test case contains a non-empty text composed only of uppercase letters of English alphabet.
	The length of the text is less then 100. There are no any spaces in the input.

	Output
	For each test case, output a single line containing the number of holes in the corresponding text.

	The only line of each test case contains a non-empty text composed only of uppercase letters of English alphabet.
 *************************************************************************************************************************
Example

Input:
2
CODECHEF
DRINKEATCODE

Output:
2
5

 **************************************************************************************************************************/

package easy;
import java.util.HashMap;
import java.util.Scanner;

public class HolesInText {

	public static void main(String[] args) {


		Scanner scn = new Scanner(System.in);
		// no of Lines to be inputed
		int numLine = scn.nextInt();

		// alphabets & Holes list
		HashMap<Character,Integer> hm = new HashMap<Character,Integer>();
		hm.put('A', 1);
		hm.put('B', 2);
		hm.put('D', 1);
		hm.put('O', 1);
		hm.put('P', 1);
		hm.put('R', 1);
		hm.put('Q', 1);

		// iterating for no of lines inputted
		for(int i=0;i<numLine;i++){
			String line = scn.next().toString();
			int noOfHoles = 0;

			//checking for holes & counting for each line
			for(int j = 0;j < line.length();j++){
				if(hm.containsKey(line.charAt(j))){
					noOfHoles+= hm.get(line.charAt(j));
				}
			}
			System.out.println(noOfHoles);

		}
		scn.close();

	}// main

} // class
