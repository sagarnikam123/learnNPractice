/**************************************************************************************************

    firstHalf - solved
    
    Given a string of even length, return the first half. So the string "WooHoo" yields "Woo". 
***************************************************************************************************
firstHalf("WooHoo") → "Woo"
firstHalf("HelloThere") → "Hello"
firstHalf("abcdef") → "abc"
firstHalf("ab") → "a"
firstHalf("") → ""
firstHalf("0123456789") → "01234"
firstHalf("kitten") → "kit"
**************************************************************************************************/
package javaExample.string1;

public class FirstHalf
{

    public static void main(String[] args)
    {
    	System.out.println(firstHalf("WooHoo"));
    	System.out.println(firstHalf("HelloThere"));
    	System.out.println(firstHalf("abcdef"));
    }
    
    public static String firstHalf(String karma){
    	
    	return karma.substring(0, karma.length()/2);
    }

}
