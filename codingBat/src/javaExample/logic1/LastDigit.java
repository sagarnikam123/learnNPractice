/**************************************************************************************************

    lastDigit - solved

    Given three ints, a b c, return true if two or more of them have the same rightmost digit.
    The ints are non-negative. Note: the % "mod" operator computes the remainder, e.g. 17 % 10 is 7.
***************************************************************************************************
lastDigit(23, 19, 13) → true
lastDigit(23, 19, 12) → false
lastDigit(23, 19, 3) → true
lastDigit(23, 19, 39) → true
lastDigit(1, 2, 3) → false
lastDigit(1, 1, 2) → true
lastDigit(1, 2, 2) → true
lastDigit(14, 25, 43) → false
lastDigit(14, 25, 45) → true
lastDigit(248, 106, 1002) → false
lastDigit(248, 106, 1008) → true-
lastDigit(10, 11, 20) → true
lastDigit(0, 11, 0) → true
**************************************************************************************************/
package javaExample.logic1;

public class LastDigit
{

    public static void main(String[] args)
    {
    	System.out.println(lastDigit(0,11,0));
    }

    public static boolean lastDigit(int a, int b, int c) {


    	if(giveRightDigit(a) == giveRightDigit(b)){
    		return true;
    	}else if(giveRightDigit(b) == giveRightDigit(c)){
    		return true;
    	}else if(giveRightDigit(a) == giveRightDigit(c)){
    		return true;
    	}

    	return false;
    }

    public static int giveRightDigit(int k){

    	k=k%10;
    	return k;

    }

}
