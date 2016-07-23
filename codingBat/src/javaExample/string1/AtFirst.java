/**************************************************************************************************

    atFirst - solved
    
    Given a string, return a string length 2 made of its first 2 chars.
    If the string length is less than 2, use '@' for the missing chars. 
***************************************************************************************************
atFirst("hello") → "he"
atFirst("hi") → "hi"
atFirst("h") → "h@"
atFirst("") → "@@"
atFirst("kitten") → "ki"
atFirst("java") → "ja"
atFirst("j") → "j@"
**************************************************************************************************/
package javaExample.string1;

public class AtFirst
{

    public static void main(String[] args)
    {
    	System.out.println(atFirst("hello"));
    	System.out.println(atFirst("hi") );
    	System.out.println(atFirst("h"));
    	System.out.println(atFirst(""));
    }
    
    public static String atFirst(String ambara){
    	
    	if(ambara.length() >= 2){
    		return ambara.substring(0, 2);
    	}else if (ambara.length()==1){
    		return ambara.concat("@");
    	}else{
    		return ambara.concat("@@");
    	}
    }

}
