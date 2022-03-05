/**************************************************************************************************

    lessBy10 - solved

     Given three ints, a b c, return true if one of them is 10 or more less than one of the others.
     Tip mine :- diff between any two is 10 or greater than 10
***************************************************************************************************
lessBy10(1, 7, 11) → true
lessBy10(1, 7, 10) → false
lessBy10(11, 1, 7) → true
lessBy10(10, 7, 1) → false
lessBy10(-10, 2, 2) → true
lessBy10(2, 11, 11) → false
lessBy10(3, 3, 30) → true
lessBy10(3, 3, 3) → false
lessBy10(10, 1, 11) → true
lessBy10(10, 11, 1) → true
lessBy10(10, 11, 2) → false
lessBy10(3, 30, 3) → true
lessBy10(2, 2, -8) → true
lessBy10(2, 8, 12) → true
**************************************************************************************************/
package javaExample.logic1;

public class LessBy10
{

    public static void main(String[] args)
    {
    	System.out.println(lessBy10(2, 8, 12));
    }

    public static boolean lessBy10(int a, int b, int c) {

        int aDiffB = Math.abs(a-b);
        int bDiffC = Math.abs(b-c);
        int aDiffC = Math.abs(a-c);

        if(aDiffB >=10 || bDiffC >=10 || aDiffC >=10){
			return true;
		}

    	return false;
    }


}
