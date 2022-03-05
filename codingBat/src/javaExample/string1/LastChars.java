/**************************************************************************************************

    lastChars - solved

    Given 2 strings, a and b, return a new string made of the first char of a and the last char of b,
    so "yo" and "java" yields "ya". If either string is length 0, use '@' for its missing char.
***************************************************************************************************
lastChars("last", "chars") → "ls"
lastChars("yo", "java") → "ya"
lastChars("hi", "") → "h@"
lastChars("", "hello") → "@o"
lastChars("", "") → "@@"
lastChars("kitten", "hi") → "ki"
lastChars("k", "zip") → "kp"
lastChars("kitten", "") → "k@"
lastChars("kitten", "zip") → "kp"
**************************************************************************************************/
package javaExample.string1;

public class LastChars
{

    public static void main(String[] args)
    {
    	System.out.println(lastChars("last", "chars"));
    	System.out.println(lastChars("yo", "java"));
    	System.out.println(lastChars("hi", ""));
    }

	private static String lastChars(String dholitaro, String navyug) {

		String fuck = "";
		if(dholitaro.length() != 0){
			fuck+=dholitaro.substring(0, 1);
		}else{
			fuck+="@";
		}
		if(navyug.length()!=0){
			fuck+=navyug.substring(navyug.length()-1,navyug.length() );
		}else{
			fuck+="@";
		}

		return fuck;
	}

}
