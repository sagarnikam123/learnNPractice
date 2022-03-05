/**********************************************************************************************************************

	Life, the Universe, and Everything - solved

	Your program is to use the brute-force approach in order to find the Answer to Life, the Universe, and Everything.
	More precisely... rewrite small numbers from input to output. Stop processing input after reading in the number 42.
	All numbers at input are integers of one or two digits.
 **********************************************************************************************************************
Example

Input:
1
2
88
42
99

Output:
1
2
88
**********************************************************************************************************************/
package beginner;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class LifeUniverseNEverything {

	public static void main(String[] args) {

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		String input = null;


		try {
			while ((input = br.readLine()) != null) {

				//parsing input string into int
				int pasrsedInt = Integer.parseInt(input);

				// checking for condition
				if(pasrsedInt==42){
					br.close();
					break;
				}else{
					System.out.println(pasrsedInt);
				}
			}

		} catch (IOException e) {
			System.out.println();
		}

	} // main

} // class
