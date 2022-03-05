/**************************************************************************************************

    extraFront - solved

    Given a string, return a new string made of 3 copies of the first 2 chars of the original string.
    The string may be any length. If there are fewer than 2 chars, use whatever is there.
***************************************************************************************************
extraFront("Hello") → "HeHeHe"
extraFront("ab") → "ababab"
extraFront("H") → "HHH"
extraFront("") → ""
extraFront("Candy") → "CaCaCa"
extraFront("Code") → "CoCoCo"
**************************************************************************************************/
package javaExample.string1;

public class ExtraFront
{

    public static void main(String[] args)
    {
    	System.out.println(extraFront("Hello"));
    	System.out.println(extraFront("ab"));
    	System.out.println(extraFront("H"));
    }

    public static String extraFront(String waterfall){

    	if(waterfall.length() <= 2 ){
    		return waterfall+waterfall+waterfall;
    	}
    	return waterfall.substring(0, 2)+waterfall.substring(0, 2)+waterfall.substring(0, 2);
    }

}
