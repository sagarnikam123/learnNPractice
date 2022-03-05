/**************************************************************************************************

    bobThere - solved

    Return true if the given string contains a "bob" string, but where the middle 'o' char can be any char.
***************************************************************************************************
bobThere("abcbob") → true
bobThere("b9b") → true
bobThere("bac") → false
bobThere("bbb") → true
bobThere("abcdefb") → false
bobThere("123abcbcdbabxyz") → true
bobThere("b12") → false
bobThere("b1b") → true
bobThere("b12b1b") → true
bobThere("bbc") → false
bobThere("bbb") → true
bobThere("bb") → false
bobThere("b") → false
**************************************************************************************************/
package javaExample.string2;

public class BobThere
{

    public static void main(String[] args)
    {
    	System.out.println(bobThere("b9b"));
    }

    public static boolean bobThere(String str) {

		if (str.length() >= 3) {
			for (int i = 0; i < str.length() - 2; i++) {
				if (str.charAt(i) == str.charAt(i + 2) && str.charAt(i + 2) == 'b') {
					return true;
				}
			}

		}

    	return false;
    }


}
