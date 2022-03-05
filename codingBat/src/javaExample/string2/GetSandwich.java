/**************************************************************************************************

    getSandwich - solved

    A sandwich is two pieces of bread with something in between. Return the string that is between
    the first and last appearance of "bread" in the given string, or return the empty string ""
    if there are not two pieces of bread.
***************************************************************************************************
getSandwich("breadjambread") → "jam"
getSandwich("xxbreadjambreadyy") → "jam"
getSandwich("xxbreadyy") → ""
getSandwich("xxbreadbreadjambreadyy") → "breadjam"
getSandwich("breadAbread") → "A"
getSandwich("breadbread") → ""
getSandwich("abcbreaz") → ""
getSandwich("xyz") → ""
getSandwich("") → ""
getSandwich("breadbreaxbread") → "breax"
getSandwich("breaxbreadybread") → "y"
getSandwich("breadbreadbreadbread") → "breadbread"
**************************************************************************************************/
package javaExample.string2;

public class GetSandwich
{

    public static void main(String[] args)
    {
    	System.out.println(getSandwich("xxbreadjambreadyy"));
    }

    public static String getSandwich(String str) {

    	int firstBread = str.indexOf("bread");
    	int lastBread = str.lastIndexOf("bread");

    	if(firstBread < 0 || lastBread < 0 || firstBread == lastBread) return "";

    	String jam = str.substring(firstBread+5, lastBread);

    	return jam;
    }


}
