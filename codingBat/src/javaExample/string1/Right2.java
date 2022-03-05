/**************************************************************************************************

    right2 - solved

    Given a string, return a "rotated right 2" version where the last 2 chars are moved to the start.
    The string length will be at least 2.
***************************************************************************************************
right2("Hello") → "loHel"
right2("java") → "vaja"
right2("Hi") → "Hi"
right2("code") → "deco"
right2("cat") → "atc"
right2("12345") → "45123"
**************************************************************************************************/
package javaExample.string1;

public class Right2
{

    public static void main(String[] args)
    {
    	System.out.println(right2("Hello"));
    	System.out.println(right2("java"));
    	System.out.println(right2("Hi"));
    }

    public static String right2(String dharti){
    	int ileana = dharti.length();
    	if(ileana!=2){
    		return dharti.substring(ileana-2)+dharti.substring(0, ileana-2);
    	}
    	return dharti;
    }

}
