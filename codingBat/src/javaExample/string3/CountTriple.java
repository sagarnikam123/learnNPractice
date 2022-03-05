/**************************************************************************************************

    countTriple - solved

    We'll say that a "triple" in a string is a char appearing three times in a row.
    Return the number of triples in the given string. The triples may overlap.
***************************************************************************************************
countTriple("abcXXXabc") â†’ 1
countTriple("xxxabyyyycd") â†’ 3
countTriple("a") â†’ 0
countTriple("") → 0
countTriple("XXXabc") → 1
countTriple("XXXXabc") → 2
countTriple("XXXXXabc") → 3
countTriple("222abyyycdXXX") → 3
countTriple("abYYYabXXXXXab") → 4
countTriple("abYYXabXXYXXab") → 0
countTriple("abYYXabXXYXXab") → 0
countTriple("122abhhh2") → 1
**************************************************************************************************/
package javaExample.string3;

public class CountTriple
{

    public static void main(String[] args)
    {
    	System.out.println(countTriple("xxxabyyyycd"));
    }

    public static int countTriple(String str) {

    	int noTriplet = 0;
    	if(str.length() < 3) return 0;

    	for(int i =0;i< str.length()-2;i++){

    		char currentCarti = str.charAt(i);
	    	if(currentCarti==str.charAt(i+1) && currentCarti==str.charAt(i+2) ){
	    			noTriplet++;
	    	}
    	}
    	return noTriplet;
    }


}
