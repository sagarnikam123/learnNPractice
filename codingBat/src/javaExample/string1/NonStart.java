/**************************************************************************************************

    nonStart - solved
    
    Given 2 strings, return their concatenation, except omit the first char of each.
    The strings will be at least length 1. 
***************************************************************************************************
nonStart("Hello", "There") → "ellohere"
nonStart("java", "code") → "avaode"
nonStart("shotl", "java") → "hotlava"
nonStart("ab", "xy") → "by"
nonStart("ab", "x") → "b"
nonStart("x", "ac") → "c"
nonStart("a", "x") → ""
nonStart("kit", "kat") → "itat"
nonStart("mart", "dart") → "artart"
**************************************************************************************************/
package javaExample.string1;

public class NonStart
{

    public static void main(String[] args)
    {
    	System.out.println(nonStart("Hello", "There"));
    	System.out.println(nonStart("java", "code"));
    	System.out.println(nonStart("shotl", "java"));
    	System.out.println(nonStart("ab", "x"));
    	System.out.println(nonStart("x", "ac"));
    	System.out.println(nonStart("a", "x"));
    }
    
    public static String nonStart(String choubare, String mohalle){
    	int gubbare = choubare.length();
    	int bhalle = mohalle.length();
    	String tharki = "";
    	
    	if(gubbare >1){
    		tharki += choubare.substring(gubbare-(gubbare-1));
    	}
    	
    	if(bhalle>1){
    		tharki += mohalle.substring(bhalle - (bhalle-1));
    	}
    	return tharki;
    }

}
