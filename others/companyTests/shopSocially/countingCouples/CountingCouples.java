// Counting Couples

package problem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Scanner;

public class CountingCouples {

	public static void main(String[] args) {


		Scanner firstLoop = new Scanner(System.in);
		String input = firstLoop.nextLine();
		
		String workingString = input;
		int noCoupleMatched =0;
		
			while(workingString.length() >= 2){
				
				String next = null;
				for(int i=0;i< workingString.length()-1;i++){
				String couple = workingString.substring(i, i+2);
				// System.out.println(couple); // non-matched couple
				
					
					if(couple.charAt(0)==couple.charAt(1)){
					 next =	workingString.replaceFirst(couple, "");
					 
					 System.out.println(couple); //matched couples
					 noCoupleMatched++;
					 //System.out.print(next);
					}
					
				
				} //for
				workingString = next; // replacing new with previously working

			} //while
		
			firstLoop.close();	//closing input stream	
			System.out.println("No of couples in given String - "+noCoupleMatched);	
		
		
		

	} // main

} //class
