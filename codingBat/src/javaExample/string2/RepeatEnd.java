/**************************************************************************************************

    repeatEnd - solved
    
    Given a string and an int N, return a string made of N repetitions of the last N characters of
    the string. You may assume that N is between 0 and the length of the string, inclusive. 
***************************************************************************************************
repeatEnd("Hello", 3) → "llollollo"
repeatEnd("Hello", 2) → "lolo"
repeatEnd("Hello", 1) → "o"
repeatEnd("Hello", 0) → ""
repeatEnd("abc", 3) → "abcabcabc"
repeatEnd("1234", 2) → "3434"
repeatEnd("1234", 3) → "234234234"
repeatEnd("", 0) → ""
**************************************************************************************************/
package javaExample.string2;

public class RepeatEnd
{

    public static void main(String[] args)
    {
    	System.out.println(repeatEnd("Hello", 1));
    }
    
    public static String repeatEnd(String str, int n) {
        
    	String repetable = str.substring(str.length()-n, str.length());
    	String returnPapudra = "";
    	
    	for(int i=0;i<n;i++){
    		returnPapudra +=repetable;
    	}
    	return returnPapudra;
    }


}
