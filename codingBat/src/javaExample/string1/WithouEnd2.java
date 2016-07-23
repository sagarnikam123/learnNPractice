/**************************************************************************************************

    withouEnd2 - solved
    
    Given a string, return a version without both the first and last char of the string. 
    The string may be any length, including 0. 
***************************************************************************************************
withouEnd2("Hello") → "ell"
withouEnd2("abc") → "b"
withouEnd2("ab") → ""
withouEnd2("a") → ""
withouEnd2("") → ""
withouEnd2("coldy") → "old"
withouEnd2("java code") → "ava cod"
**************************************************************************************************/
package javaExample.string1;

public class WithouEnd2
{

    public static void main(String[] args)
    {
    	System.out.println(withouEnd2("Hello"));
    	System.out.println(withouEnd2("abc"));
    	System.out.println(withouEnd2("ab"));
    }
    
    public static String withouEnd2(String sexy){
    	
    	if(sexy.length()>2){
    		return sexy.substring(1, sexy.length()-1);
    	}else{
    		return "";
    	}
    }

}
