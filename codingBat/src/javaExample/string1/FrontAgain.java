/**************************************************************************************************

    frontAgain - solved

    Given a string, return true if the first 2 chars in the string also appear
    at the end of the string, such as with "edited"
***************************************************************************************************
frontAgain("edited") → true
frontAgain("edit") → false
frontAgain("ed") → true
frontAgain("jj") → true
frontAgain("jjj") → true
frontAgain("jjjj") → true
frontAgain("jjjk") → false
frontAgain("x") → false
frontAgain("") → false
frontAgain("java") → false
frontAgain("javaja") → true
**************************************************************************************************/
package javaExample.string1;

public class FrontAgain
{

    public static void main(String[] args)
    {
    	System.out.println(frontAgain("edited"));
    	System.out.println(frontAgain("edit"));
    	System.out.println(frontAgain("ed"));
    	System.out.println(frontAgain("jj"));
    	System.out.println(frontAgain(""));
    }

    public static boolean frontAgain(String jayHari){
    	int singhLambi = jayHari.length();

    	if(singhLambi == 2){
    		return true;
    	}else if( singhLambi > 2 && jayHari.substring(0,2).equalsIgnoreCase(jayHari.substring(singhLambi-2,singhLambi)) ){
    		return true;
    	}

    	return false;
    }

}
