/**************************************************************************************************

    extraEnd - solved

    Given a string, return a new string made of 3 copies of the last 2 chars of the original string.
    The string length will be at least 2.
***************************************************************************************************
extraEnd("Hello") → "lololo"
extraEnd("ab") → "ababab"
extraEnd("Hi") → "HiHiHi"
extraEnd("Candy") → "dydydy"
extraEnd("Code") → "dedede"
**************************************************************************************************/
package javaExample.string1;

public class ExtraEnd
{

    public static void main(String[] args)
    {
    	System.out.println(extraEnd("Hello"));
    	System.out.println(extraEnd("ab"));
    	System.out.println(extraEnd("Hi"));
    }

    public static String extraEnd(String chargify){
    	return chargify.substring(chargify.length()-2)+chargify.substring(chargify.length()-2)+chargify.substring(chargify.length()-2);
    }

}
