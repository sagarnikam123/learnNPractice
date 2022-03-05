/**************************************************************************************************

    equalIsNot - solved

    Given a string, return true if the number of appearances of "is" anywhere in the string is equal
    to the number of appearances of "not" anywhere in the string (case sensitive).
***************************************************************************************************
equalIsNot("This is not") → false
equalIsNot("This is notnot") → true
equalIsNot("noisxxnotyynotxisi") → true
equalIsNot("noisxxnotyynotxsi") → false
equalIsNot("xxxyyyzzzintint") → true
equalIsNot("") → true
equalIsNot("isisnotnot") → true
equalIsNot("isisnotno7Not") → false
equalIsNot("isnotis") → false
equalIsNot("mis3notpotbotis") → false
**************************************************************************************************/
package javaExample.string3;

public class EqualIsNot
{

    public static void main(String[] args)
    {
    	System.out.println(equalIsNot("This is not"));
    }

    public static boolean equalIsNot(String str) {

    	int noIs = 0;
    	int noNot = 0;

    	for(int i=0;i<str.length()-1;i++){

    		if(str.substring(i, i+2).equals("is")) noIs++;
    	}

    	for(int i=0;i<str.length()-2;i++){

    		if(str.substring(i, i+3).equals("not")) noNot++;
    	}

    	if(noIs == noNot) return true;
        return false;
    }


}
