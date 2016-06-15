/**************************************************************************************************

    comboString - solved
    
    Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string 
    on the outside and the longer string on the inside. The strings will not be the same length, 
    but they may be empty (length 0).
***************************************************************************************************
comboString("Hello", "hi") → "hiHellohi"
comboString("hi", "Hello") → "hiHellohi"
comboString("aaa", "b") → "baaab"
comboString("b", "aaa") → "baaab"
comboString("aaa", "") → "aaa"
comboString("", "bb") → "bb"
comboString("aaa", "1234") → "aaa1234aaa"
comboString("aaa", "bb") → "bbaaabb"
comboString("a", "bb") → "abba"
comboString("bb", "a") → "abba"
comboString("xyz", "ab") → "abxyzab"
**************************************************************************************************/
package javaExample.string1;

public class ComboString
{

    public static void main(String[] args)
    {
    	System.out.println(comboString("Hello", "hi"));
    	System.out.println(comboString("hi", "Hello"));
    	System.out.println(comboString("aaa", "b"));
    }
    
    public static String comboString(String mainkuli,String chainkuli){
    	
    	if(mainkuli.length() > chainkuli.length()){
    		return chainkuli.concat(mainkuli).concat(chainkuli);
    	}else{
    		return mainkuli.concat(chainkuli).concat(mainkuli);
    	}
    }

}
