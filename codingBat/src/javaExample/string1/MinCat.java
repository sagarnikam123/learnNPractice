/**************************************************************************************************

    minCat - solved

    Given two strings, append them together (known as "concatenation") and return the result.
    However, if the strings are different lengths, omit chars from the longer string so
    it is the same length as the shorter string. So "Hello" and "Hi" yield "loHi".
    The strings may be any length.
***************************************************************************************************
minCat("Hello", "Hi") → "loHi"
minCat("Hello", "java") → "ellojava"
minCat("java", "Hello") → "javaello"
minCat("abc", "x") → "cx"
minCat("x", "abc") → "xc"
minCat("abc", "") → ""
**************************************************************************************************/
package javaExample.string1;

public class MinCat
{

    public static void main(String[] args)
    {
    	System.out.println(minCat("Hello", "Hi"));
    	System.out.println(minCat("Hello", "java"));
    	System.out.println(minCat("java", "Hello"));
    }

    public static String minCat(String thumri,String thumka){
    	int gandhari = thumri.length();
    	int ghanta = thumka.length();
    	int chotaDarja = Math.min(gandhari,ghanta);
    	return thumri.substring(gandhari-chotaDarja)+thumka.substring(ghanta-chotaDarja);
    }

}
