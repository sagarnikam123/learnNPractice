/**************************************************************************************************

    theEnd - solved
    
    Given a string, return a string length 1 from its front, unless front is false,
    in which case return a string length 1 from its back. The string will be non-empty. 
***************************************************************************************************
theEnd("Hello", true) → "H"
theEnd("Hello", false) → "o"
theEnd("oh", true) → "o"
theEnd("oh", false) → "h"
theEnd("x", true) → "x"
theEnd("x", false) → "x"
theEnd("java", true) → "j"
theEnd("chocolate", false) → "e"
theEnd("1234", true) → "1"
theEnd("code", false) → "e"
**************************************************************************************************/
package javaExample.string1;

public class TheEnd
{

    public static void main(String[] args)
    {
    	System.out.println(theEnd("Hello", true));
    	System.out.println(theEnd("Hello", false));
    	System.out.println(theEnd("oh", true));
    }
    
    public static String theEnd(String khubiya,boolean expo){
    	
    	if(expo == true){
    		return khubiya.substring(0, 1);
    	}else{
    		return khubiya.substring(khubiya.length()-1);
    	}
    }

}
