/**************************************************************************************************

    array123 - solved

    Given an array of ints, return true if .. 1, 2, 3, .. appears in the array somewhere.
***************************************************************************************************
array123({1, 1, 2, 3, 1}) → true
array123({1, 1, 2, 4, 1}) → false
array123({1, 1, 2, 1, 2, 3}) → true
array123({1, 1, 2, 1, 2, 1}) → false
array123({1, 2, 3, 1, 2, 3}) → true
array123({1, 2, 3}) → true
array123({1, 1, 1}) → false
array123({1, 2}) → false
array123({1}) → false
array123({}) → false
**************************************************************************************************/
package javaExample.warmup2;

public class Array123
{

    public static void main(String[] args)
    {
    	System.out.println(array123(1, 1, 2, 3, 1));
    	System.out.println(array123(1, 1, 2, 4, 1));
    	System.out.println(array123(1, 1, 2, 1, 2, 3));
    }

    // using varArgs
    private static boolean array123(int ... anjanKiCity) {

    	int bjp [] = anjanKiCity;

    	for(int sasubai = 0 ;sasubai < bjp.length-2; sasubai ++){

    		if(bjp[sasubai] == 1 && bjp[sasubai+1] == 2 && bjp[sasubai+2] ==3 )
    		return true;
    	}
    	return false;
	}

}
