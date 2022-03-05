/**************************************************************************************************

	withoutEnd - solved

    Given a string, return a version without the first and last char, so "Hello" yields "ell".
    The string length will be at least 2.
***************************************************************************************************
withoutEnd("Hello") → "ell"
withoutEnd("java") → "av"
withoutEnd("coding") → "odin"
withoutEnd("code") → "od"
withoutEnd("ab") → ""
withoutEnd("Chocolate!") → "hocolate"
withoutEnd("kitten") → "itte"
withoutEnd("woohoo") → "ooho"
**************************************************************************************************/
package javaExample.string1;

public class WithoutEnd
{

    public static void main(String[] args)
    {
    	System.out.println(withoutEnd("Hello"));
    	System.out.println(withoutEnd("java"));
    	System.out.println(withoutEnd("coding"));
    }

    public static String withoutEnd(String saiyya){

    	if(saiyya.length()>2){
    		return saiyya.substring(1, saiyya.length()-1);
    	}else{
    		return "";
    	}
    }

}
