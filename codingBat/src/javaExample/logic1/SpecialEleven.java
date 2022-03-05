/**************************************************************************************************

    specialEleven - solved

    We'll say a number is special if it is a multiple of 11 or if it is one more than a multiple of 11.
    Return true if the given non-negative number is special. Use the % "mod" operator
    -- see Introduction to Mod
***************************************************************************************************
specialEleven(22) → true
specialEleven(23) → true
specialEleven(24) → false
specialEleven(21) → false
specialEleven(11) → true
specialEleven(12) → true
specialEleven(10) → false
specialEleven(9) → false
specialEleven(8) → false
specialEleven(0) → true
specialEleven(1) → true
specialEleven(2) → false
specialEleven(121) → true
specialEleven(122) → true
specialEleven(123) → false
specialEleven(46) → false
specialEleven(49) → false
specialEleven(52) → false
specialEleven(54) → false
specialEleven(55) → true
**************************************************************************************************/
package javaExample.logic1;

public class SpecialEleven
{

    public static void main(String[] args)
    {
    	System.out.println(specialEleven(1));
    }

    public static boolean specialEleven(int n) {

    	if(n % 11 ==0 || n%11==1){
    		return true;
    	}
    	return false;
    }


}
