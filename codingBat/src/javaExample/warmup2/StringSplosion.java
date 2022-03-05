/**************************************************************************************************

    stringSplosion - solved

    Given a non-empty string like "Code" return a string like "CCoCodCode".
***************************************************************************************************
stringSplosion("Code") → "CCoCodCode"
stringSplosion("abc") → "aababc"
stringSplosion("ab") → "aab"
stringSplosion("x") → "x"
stringSplosion("fade") → "ffafadfade"
stringSplosion("There") → "TThTheTherThere"
stringSplosion("Kitten") → "KKiKitKittKitteKitten"
stringSplosion("Bye") → "BByBye"
stringSplosion("Good") → "GGoGooGood"
stringSplosion("Bad") → "BBaBad"
**************************************************************************************************/
package javaExample.warmup2;

public class StringSplosion
{

    public static void main(String[] args)
    {
    	System.out.println(stringSplosion("Code"));
    	System.out.println(stringSplosion("abc"));
    	System.out.println(stringSplosion("ab"));
    	System.out.println();
    }

    public static String stringSplosion(String mastMagan){

    	int lambiJudai = mastMagan.length();

    	String feku  = "";
    	for(int i=0;i<lambiJudai;i++){
    		feku += mastMagan.substring(0,i+1);
    	}

    	return feku;
    }

}
