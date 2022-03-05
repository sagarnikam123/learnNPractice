/**************************************************************************************************

    allStar - solved

    Given a string, compute recursively a new string where all the adjacent chars are now separated by a "*".
***************************************************************************************************
allStar("hello") → "h*e*l*l*o"
allStar("abc") → "a*b*c"
allStar("ab") → "a*b"
allStar("a") → "a"
allStar("") → ""
allStar("3.14") → "3*.*1*4"
allStar("Chocolate") → "C*h*o*c*o*l*a*t*e"
allStar("1234") → "1*2*3*4"
**************************************************************************************************/
package javaExample.recursion1;

public class AllStar
{

    public static void main(String[] args)
    {
    	System.out.println(allStar("hello"));
    }

    public static String allStar(String str) {

    	if(str.length()==0) return str;
    	if(str.length()==1) return str;
    	String firstChani = str.substring(0, 1)+"*";
    	String remainingFaluda = str.substring(1,str.length());

    	return firstChani+allStar(remainingFaluda);
    }

  }
