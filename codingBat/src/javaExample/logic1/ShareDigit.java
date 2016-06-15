/**************************************************************************************************

    shareDigit - solved
    
    Given two ints, each in the range 10..99, return true if there is a digit that appears in both 
    numbers, such as the 2 in 12 and 23. (Note: division, e.g. n/10, gives the left digit while
    the % "mod" n%10 gives the right digit.) 
***************************************************************************************************
shareDigit(12, 23) → true
shareDigit(12, 43) → false
shareDigit(12, 44) → false
shareDigit(23, 12) → true
shareDigit(23, 39) → true
shareDigit(23, 19) → false	
shareDigit(30, 90) → true
shareDigit(30, 91) → false
shareDigit(55, 55) → true
shareDigit(55, 44) → false
**************************************************************************************************/
package javaExample.logic1;

public class ShareDigit
{

    public static void main(String[] args)
    {
    	System.out.println(shareDigit(12, 44));
    }
    
    public static boolean shareDigit(int a, int b) {
        
    	if(a/10 == b/10 || a/10 == b%10 || a%10==b/10 || a%10==b%10){
    		return true;
    	}
    	return false;
    }

}
