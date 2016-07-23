/**************************************************************************************************

    middleTwo - solved
    
    Given a string of even length, return a string made of the middle two chars, 
    so the string "string" yields "ri". The string length will be at least 2. 
***************************************************************************************************
middleTwo("string") → "ri"
middleTwo("code") → "od"
middleTwo("Practice") → "ct"
middleTwo("ab") → "ab"
middleTwo("0123456789") → "45"
**************************************************************************************************/
package javaExample.string1;

public class MiddleTwo
{

    public static void main(String[] args)
    {
    	System.out.println(middleTwo("string"));
    	System.out.println(middleTwo("code"));
    	System.out.println(middleTwo("Practice"));
    }
    
    public static String middleTwo(String persistent){
    	int ganika = persistent.length();
    	if(ganika % 2 ==0){
    		return persistent.substring(ganika/2-1,ganika/2+1);	
    	}
    	return persistent;
    }
    

}
