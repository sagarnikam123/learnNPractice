package problem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map.Entry;
import java.util.Scanner;

public class TopWords {

	
	// contains multiLine inputs like glob glob Silver is 34 Credits
		private static ArrayList<String> wordList=new ArrayList<String>();
		
		// non duplicate wordList
		static HashSet noDupSet = new HashSet();
		
		
		//contains Units-values like pish 10
		private static HashMap<String,Integer> countHM = new HashMap<String,Integer>();
		
	
	public static void main(String[] args) {
		
		System.out.println("Put input one per each line");
		System.out.println("No. of words - wordList - findingLetter");
		//taking test input
				Scanner firstLoop = new Scanner(System.in);
				int firstNumber = firstLoop.nextInt();
				//System.out.println(firstNumber);
				
				// looping +2 - first digit & last character
				for(int z =0;z<firstNumber+2;z++){
					String str = firstLoop.nextLine();
					wordList.add(str);
					
				}
				//remove first input (integer) digit
				wordList.remove(0); 
				//finding letter
				String findingLetter = wordList.get(wordList.size()-1);
				
				//removing last letter
				wordList.remove(wordList.size()-1);
				 
				
				//creating unique wordList
				noDupSet.addAll(wordList);
				//System.out.println(wordList);  //input wordList
				
				
				// System.out.println(inputWord); //last digit
				
				//System.out.println(noDupSet); //printing non duplicate wordList
				
				
				Object[] bewakuf=  noDupSet.toArray();
								
				for(int i =0;i<bewakuf.length;i++){
					
					String wordToFind = (String) bewakuf[i];
					
					int meraCount =0;
					for(int j=0;j < wordList.size();j++){
						
						if(wordList.get(j).matches(wordToFind) ) {meraCount++;}
					}
					
					//adding counted words
					countHM.put(wordToFind, meraCount);
					meraCount=0;
					
				} // -for
				
				
				// System.out.println(countHM); //printing HashMap
				
				//finding & printing top words with searching
				
			
				System.out.println("Top words are- ");
				// over uniqueHM
				int wordtoPrint =1;
				for (Entry<String, Integer> entry : countHM.entrySet()) {
				    
				    //System.out.println(entry.getKey() + "," + entry.getValue());
					if(entry.getKey().toString().substring(0,1).equals(findingLetter.substring(0, 1)) && wordtoPrint <=5){
						System.out.println("   "+entry.getKey() );
						wordtoPrint++;
					}
					
				}
				if(wordtoPrint==1){System.out.println("NULL");}
				
				
				
				
				
				firstLoop.close(); //closing input stream

	} //main
	
	

		
} //
