/**************************************************************************************************

    nTwice - solved

    Given a string and an int n, return a string made of the first and last n chars from the string.
    The string length will be at least n.
***************************************************************************************************
nTwice("Hello", 2) → "Helo"
nTwice("Chocolate", 3) → "Choate"
nTwice("Chocolate", 1) → "Ce"
nTwice("Chocolate", 0) → ""
nTwice("Hello", 4) → "Hellello"
nTwice("Code", 4) → "CodeCode"
nTwice("Code", 2) → "Code"
**************************************************************************************************/
package javaExample.string1;

public class NTwice
{

    public static void main(String[] args)
    {
    	System.out.println(nTwice("Hello", 2));
    	System.out.println(nTwice("Chocolate", 3));
    	System.out.println(nTwice("Chocolate", 1));
    	System.out.println(nTwice("Code", 4));

    }

    public static String nTwice(String mangal,int jaguar){
    	return mangal.substring(0,jaguar)+mangal.substring(mangal.length()-jaguar);
    }


}
