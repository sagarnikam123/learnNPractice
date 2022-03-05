/**************************************************************************************************

    twoChar - solved

    Given a string and an index, return a string length 2 starting at the given index.
    If the index is too big or too small to define a string length 2, use the first 2 chars.
    The string length will be at least 2.
***************************************************************************************************
twoChar("java", 0) → "ja"
twoChar("java", 2) → "va"
twoChar("java", 3) → "ja"
twoChar("java", 4) → "ja"
twoChar("java", -1) → "ja"
twoChar("Hello", 0) → "He"
twoChar("Hello", 1) → "el"
twoChar("Hello", 99) → "He"
twoChar("Hello", 3) → "lo"
twoChar("Hello", 4) → "He"
twoChar("Hello", 5) → "He"
twoChar("Hello", -7) → "He"
twoChar("Hello", 6) → "He"
twoChar("Hello", -1) → "He"
twoChar("yay", 0) → "ya"
**************************************************************************************************/
package javaExample.string1;

public class TwoChar
{

    public static void main(String[] args)
    {
    	System.out.println(twoChar("java", 0));
    	System.out.println(twoChar("java", 2));
    	System.out.println(twoChar("java", 3));
    	System.out.println(twoChar("java", -1));
    	System.out.println(twoChar("Hello", -7));
    	System.out.println(twoChar("Hello", -1));
    }

    public static String twoChar(String lucha, int lahar){

    	int end = lucha.length();
    	int subPartLength = end - lahar;

    	// check if index is less than string length
    	if(lahar < end && subPartLength >=2 && lahar > 0){
    		return lucha.substring(lahar, lahar+2);
    	}else{
    		return lucha.substring(0, 2);
    	}
    }

}
