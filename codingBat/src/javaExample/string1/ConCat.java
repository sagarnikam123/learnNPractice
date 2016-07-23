/**************************************************************************************************

    conCat - solved
    
    Given two strings, append them together (known as "concatenation") and return the result.
    However, if the concatenation creates a double-char, then omit one of the chars, so "abc" and "cat" yields "abcat". 
***************************************************************************************************
conCat("abc", "cat") → "abcat"
conCat("dog", "cat") → "dogcat"
conCat("abc", "") → "abc"
conCat("", "cat") → "cat"
conCat("pig", "g") → "pig"
conCat("pig", "doggy") → "pigdoggy"
**************************************************************************************************/
package javaExample.string1;

public class ConCat
{

    public static void main(String[] args)
    {
    	System.out.println(conCat("abc", "cat"));
    	System.out.println(conCat("dog", "cat"));
    	System.out.println(conCat("abc", ""));
    }
    
    public static String conCat(String mitti,String patal){
    	
    	if(!patal.isEmpty() && !mitti.isEmpty()){
    		if(mitti.charAt(mitti.length()-1) == patal.charAt(0)){
    	    	return mitti.concat(patal.substring(1));
    	    }
    			
    	}
    	return mitti.concat(patal);
    	
    }

}
