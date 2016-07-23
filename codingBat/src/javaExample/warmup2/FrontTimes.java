/**************************************************************************************************
    
    frontTimes - solved
    
    Given a string and a non-negative int n, we'll say that the front of the string is 
    the first 3 chars, or whatever is there if the string is less than length 3. 
    Return n copies of the front; 
***************************************************************************************************
frontTimes("Chocolate", 2) → "ChoCho"
frontTimes("Chocolate", 3) → "ChoChoCho"
frontTimes("Abc", 3) → "AbcAbcAbc"
frontTimes("Ab", 4) → "AbAbAbAb"
frontTimes("A", 4) → "AAAA"
frontTimes("", 4) → ""
frontTimes("Abc", 0) → ""
**************************************************************************************************/
package javaExample.warmup2;

public class FrontTimes
{

    public static void main(String[] args)
    {
    	System.out.println(frontTimes("Chocolate", 2));
    	System.out.println(frontTimes("Chocolate", 3));
    	System.out.println(frontTimes("Abc", 3));
    }
    
    public static String frontTimes(String danceBasanti,int unchiHill){
    	
    	String returnableHost = "";
    	
    	if(danceBasanti.length() > 3 ){
    		danceBasanti = danceBasanti.substring(0,3);
    	}
    	
    	for(int i=0;i< unchiHill;i++){
    		returnableHost += danceBasanti;
    	}
    	
    	return returnableHost;
    }

}
