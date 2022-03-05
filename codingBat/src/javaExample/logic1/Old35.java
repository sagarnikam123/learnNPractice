/**************************************************************************************************

    old35 - solved

    Return true if the given non-negative number is a multiple of 3 or 5, but not both.
    Use the % "mod" operator
***************************************************************************************************
old35(3) → true
old35(10) → true
old35(15) → false
old35(5) → true
old35(9) → true
old35(8) → false
old35(7) → false
old35(6) → true
old35(17) → false
old35(18) → true
old35(29) → false
old35(20) → true
old35(21) → true
old35(22) → false
old35(45) → false
old35(99) → true
**************************************************************************************************/
package javaExample.logic1;

public class Old35
{

    public static void main(String[] args)
    {
    	System.out.println(old35(15));
    }
    public static boolean old35(int n) {

    	if(n%3 ==0 && n%5==0){
    		return false;
    	}else if(n%5==0 || n%3==0){
    		return true;
    	}

    	return false;
    }


}
