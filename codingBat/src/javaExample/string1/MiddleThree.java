/**************************************************************************************************

    middleThree - solved

    Given a string of odd length, return the string length 3 from its middle, so "Candy" yields "and".
    The string length will be at least 3.
***************************************************************************************************
middleThree("Candy") → "and"
middleThree("and") → "and"
middleThree("solving") → "lvi"
middleThree("Hi yet Hi") → "yet"
middleThree("java yet java") → "yet"
middleThree("Chocolate") → "col"
middleThree("XabcxyzabcX") → "xyz"
**************************************************************************************************/
package javaExample.string1;

public class MiddleThree
{

    public static void main(String[] args)
    {
    	System.out.println(middleThree("Candy"));
    	System.out.println(middleThree("and"));
    	System.out.println(middleThree("solving"));
    }

    public static String middleThree(String redHat){
    	int lambi = redHat.length();
    	if(lambi >3){
    		return redHat.substring(lambi/2-1,lambi/2+2);
    	}
    	return redHat;
    }

}
