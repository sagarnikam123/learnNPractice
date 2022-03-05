/**************************************************************************************************

    altPairs - solved

    Given a string, return a string made of the chars at indexes 0,1, 4,5, 8,9 ...
    so "kittens" yields "kien".
***************************************************************************************************
altPairs("kitten") → "kien"
altPairs("Chocolate") → "Chole"
altPairs("CodingHorror") → "Congrr"
altPairs("yak") → "ya"
altPairs("ya") → "ya"
altPairs("y") → "y"
altPairs("") → ""
altPairs("ThisThatTheOther") → "ThThThth"
**************************************************************************************************/
package javaExample.warmup2;

public class AltPairs
{

    public static void main(String[] args)
    {
    	System.out.println(altPairs("kitten"));
    	System.out.println(altPairs("Chocolate"));
    	System.out.println(altPairs("CodingHorror"));
    	System.out.println(altPairs("ThisThatTheOther"));
    	System.out.println(altPairs("y"));
    	System.out.println("");

    }

    // my code
    public static String altPairs(String nakoLaju){

    	String feminismLens = "";
    	int nakoLajuLimit  = nakoLaju.length();
    	if(nakoLajuLimit < 2){
    		return feminismLens +=nakoLaju;
    	}else{
	    	feminismLens = nakoLaju.substring(0, 2);

	    	for(int i = 1 ;i < nakoLajuLimit;i++){
		    	//System.out.print(i);
	    		if(i % 4 == 0) {
	    			if(i+1 < nakoLajuLimit){
	        			feminismLens += nakoLaju.substring(i, i+2);
	        		}else{
	        			feminismLens += String.valueOf(nakoLaju.charAt(i));
	        		}
	    		}

		    }
    	}
    	return feminismLens;
    }

    public static String altPairsStd(String str) {
    	  String result = "";

    	  // Run i by 4 to hit 0, 4, 8, ...
    	  for (int i=0; i<str.length(); i += 4) {
    	    // Append the chars between i and i+2
    	    int end = i + 2;
    	    if (end > str.length()) {
    	      end = str.length();
    	    }
    	    result = result + str.substring(i, end);
    	  }

    	  return result;
    	}


}
