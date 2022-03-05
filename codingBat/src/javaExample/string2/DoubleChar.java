/**************************************************************************************************

    doubleChar - solved

    Given a string, return a string where for every char in the original, there are two chars.
***************************************************************************************************
doubleChar("The") → "TThhee"
doubleChar("AAbb") → "AAAAbbbb"
doubleChar("Hi-There") → "HHii--TThheerree"
doubleChar("Word!") → "WWoorrdd!!"
doubleChar("!!") → "!!!!"
doubleChar("") → ""
doubleChar("a") → "aa"
doubleChar(".") → ".."
doubleChar("aa") → "aaaa"
**************************************************************************************************/
package javaExample.string2;

public class DoubleChar
{

    public static void main(String[] args)
    {
    	System.out.println(doubleChar("Hi-There"));
    }

    public static String doubleChar(String str) {
    	String khamma = "" ;

    	if(str.length()==0) return khamma;

    	for(int i =0;i<str.length();i++){
    		khamma +=str.substring(i,i+1)+str.substring(i,i+1);
    	}
        return khamma;
    }


}
