/**************************************************************************************************

    makeOutWord - solved
    
    Given an "out" string length 4, such as "<<>>", and a word, return a new string 
    where the word is in the middle of the out string, e.g. "<<word>>". Note: use str.substring(i, j)
    to extract the String starting at index i and going up to but not including index j. 
***************************************************************************************************
makeOutWord("<<>>", "Yay") → "<<Yay>>"
makeOutWord("<<>>", "WooHoo") → "<<WooHoo>>"
makeOutWord("[[]]", "word") → "[[word]]"
makeOutWord("HHoo", "Hello") → "HHHellooo"
makeOutWord("abyz", "YAY") → "abYAYyz"
**************************************************************************************************/
package javaExample.string1;

public class MakeOutWord
{

    public static void main(String[] args)
    {
    	System.out.println(makeOutWord("<<>>", "Yay"));
    	System.out.println(makeOutWord("<<>>", "WooHoo"));
    	System.out.println(makeOutWord("[[]]", "word"));
    }
    
    public static String makeOutWord(String mai, String kansa){
    	return mai.substring(0, 2)+kansa+mai.substring(2);
    }
    	 

}
