package guide;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class IoAndCal {
	
	// contains multiLine inputs like glob glob Silver is 34 Credits
	private ArrayList<String> al=new ArrayList<String>();
	
	//contains Arabic-Numerals(L,50)
	private HashMap<String,Integer> hm = new HashMap<String,Integer>();
	
	//contains Units-values like pish 10
	private HashMap<String,Integer> inputHm = new HashMap<String,Integer>();
	
	//InterGalatic Transaction - IO & Credit Calculation
	public void galaxyTransaction()throws IOException {
		
		hm.put("I", 1);
		hm.put("V",5);
		hm.put("X",10);
		hm.put("L",50);
		hm.put("C",100);
		hm.put("D",500);
		hm.put("M",1000);
		
		/*for (Map.Entry<String, Integer> me : hm.entrySet()){
			System.out.println(me.getKey());
		}*/
		
		System.out.println("MERCHANT'S GUIDE TO THE GALAXY` \n");
		System.out.println("Paste test input as it is , type 'done' & Enter \n ");
		
		
		//taking test input
		Scanner firstLoop = new Scanner(System.in);
		while(firstLoop.hasNext()){
			String str = firstLoop.nextLine();
			if(str.equals("done")){  firstLoop.close();  
			breakInputLines(); 
			breakExp(); 
			calCredit(); return;}
			else{ al.add(str);}
		}//while
		firstLoop.close();
		
	}//metod - galaxyTransaction
	
	
	//splits input lines & take required units like glob prok only
	public void breakInputLines() {
		for (int i =0;i<4;i++){
			String pieces[] = al.get(i).split(" ");
			inputHm.put(pieces[0], hm.get(pieces[2]));
			//System.out.println(pieces[0]+"  -  "+ hm.get(pieces[2]));
		}
		
		/*for(Map.Entry<String,Integer > kahiNahi : inputHm.entrySet()){
			System.out.println(kahiNahi.getValue());
		}*/
		
	} //- breakInputLines
	
	
	public void breakExp(){
		for (int i =4;i<7;i++){
			String breakedParts[] = al.get(i).split(" ");
			int nayaUnitValue = Integer.parseInt(breakedParts[4]) - (inputHm.get(breakedParts[0])+inputHm.get(breakedParts[1]));
			inputHm.put(breakedParts[2], nayaUnitValue);
			//System.out.println(nayaUnitValue);
		}
		
		/*for(Map.Entry<String,Integer > kahiNahi : inputHm.entrySet()){
			System.out.println(kahiNahi.getKey()+"  "+kahiNahi.getValue());
		}*/
		
	} //method-breakExp
	
	
	//calculates Credit for give queries
	public void calCredit(){
		
		for (int i =7;i< al.size();i++){
			String splitUnitQuery[] = al.get(i).split(" ");
			ArrayList<Integer> onlyUnits=new ArrayList<Integer>();
			
			//System.out.println(splitUnitQuery[splitUnitQuery.length-2]);
			int creditSum = 0;
			String appendedUnits ="";
			
			for (String reqUnit:splitUnitQuery){
				if(inputHm.containsKey(reqUnit)){
					appendedUnits +=reqUnit+" ";
					//creditSum += inputHm.get(reqUnit);
					onlyUnits.add(inputHm.get(reqUnit));
					//System.out.print(" "+inputHm.get(reqUnit)+" ");
				} // - if
			} // - for
			
			//odd-even checking loop
			if(onlyUnits.size()%2==0){
				//even
				for(int j =0; j < onlyUnits.size();j=j+2){
					
					if(j!=(onlyUnits.size()-1) ){
						//System.out.print(onlyUnits.get(j));
						int firstValue = onlyUnits.get(j);
						int secondValue = onlyUnits.get(j+1);
						if(firstValue < secondValue){
							creditSum+=secondValue -firstValue;
						}else{
							creditSum+=firstValue+secondValue;
						}
					}//-if
				} //-conditioned for
			}else{
				//odd
				for(int l =0; l < onlyUnits.size();l=l+2){
					//System.out.print(" "+onlyUnits.get(l)+" ");
					if(l==(onlyUnits.size()-1) ){
						//System.out.print("outer "+onlyUnits.get(l)+" ");
						creditSum+=onlyUnits.get(l);
					}else{							
							//System.out.print("odd - - ");
							//System.out.print("inner "+onlyUnits.get(l)+" ");
							int firstValue = onlyUnits.get(l);
							int secondValue = onlyUnits.get(l+1);
							if(firstValue < secondValue){
								creditSum+=secondValue -firstValue;
							}
							
					}//-if

				} // for
				
			} //-odd-even checking if-else
					
				
			
			if(creditSum==0){
				System.out.print("\n I have no idea what you are talking about");
			}else{ System.out.print(appendedUnits+" is "+creditSum+" Credits"); }
			System.out.println();
		}// for - each input query line
		
	}//method-calCredit
	
	
} //class-InputOutput
