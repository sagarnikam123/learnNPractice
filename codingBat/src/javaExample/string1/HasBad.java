/**************************************************************************************************

    hasBad - solved

    Given a string, return true if "bad" appears starting at index 0 or 1 in the string,
    such as with "badxxx" or "xbadxx" but not "xxbadxx". The string may be any length, including 0.
    Note: use .equals() to compare 2 strings.
***************************************************************************************************
hasBad("badxx") → true
hasBad("xbadxx") → true
hasBad("xxbadxx") → false
hasBad("code") → false
hasBad("bad") → true
hasBad("ba") → false
hasBad("xba") → false
hasBad("xbad") → true
hasBad("") → false
hasBad("badyy") → true
**************************************************************************************************/
package javaExample.string1;

public class HasBad
{

    public static void main(String[] args)
    {
    	System.out.println(hasBad("badxx"));
    	System.out.println(hasBad("xbadxx"));
    	System.out.println(hasBad("xxbadxx"));
    	System.out.println(hasBad("xad"));
    	System.out.println(hasBad(""));
    }

    public static boolean hasBad(String duniya){

    	if(duniya.length() >= 3 && duniya.startsWith("bad")){
    			return true;
    	}else if (duniya.length() > 3 && duniya.substring(1, 4).equalsIgnoreCase("bad")){
    			return true;
   		}
    	return false;
    }



}
