/**************************************************************************************************

    less20 - solved

    Return true if the given non-negative number is 1 or 2 less than a multiple of 20.
    So for example 38 and 39 return true, but 40 returns false. See also: Introduction to Mod
***************************************************************************************************
less20(18) → true
less20(19) → true
less20(20) → false
less20(8) → false
less20(17) → false
less20(23) → false
less20(25) → false
less20(30) → false
less20(31) → false
less20(58) → true
less20(59) → true
less20(60) → false
less20(61) → false
less20(62) → false
less20(1017) → false
less20(1018) → true
less20(1019) → true
less20(1020) → false
less20(1021) → false
less20(1022) → false
less20(1023) → false
less20(37) → false
**************************************************************************************************/
package javaExample.logic1;

public class Less20
{

    public static void main(String[] args)
    {
    	System.out.println(less20(37));
    }

    public static boolean less20(int n) {

    	if(n <=20){
    		if(n==18 || n==19) return true;
    		return false;
    	}

    	int remainder = n%20;

    	if(remainder ==18 ||remainder ==19){
    		return true;
    	}

    	return false;
    }


}
