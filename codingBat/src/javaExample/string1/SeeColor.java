/**************************************************************************************************

    seeColor - solved

    Given a string, if the string begins with "red" or "blue" return that color string,
    otherwise return the empty string.
***************************************************************************************************
seeColor("redxx") → "red"
seeColor("xxred") → ""
seeColor("blueTimes") → "blue"
seeColor("NoColor") → ""
seeColor("red") → "red"
seeColor("re") → ""
seeColor("blu") → ""
seeColor("blue") → "blue"
seeColor("a") → ""
seeColor("") → ""
seeColor("xyzred") → ""
**************************************************************************************************/
package javaExample.string1;

public class SeeColor
{

    public static void main(String[] args)
    {
    	System.out.println(seeColor("redxx"));
    	System.out.println(seeColor("xxred"));
    	System.out.println(seeColor("blueTimes"));
    }

    public static String seeColor(String misrable){

    	if(misrable.startsWith("red")){
    		return "red";
    	}else if(misrable.startsWith("blue")){
    		return "blue";
    	}
    	return "";
    }

}
