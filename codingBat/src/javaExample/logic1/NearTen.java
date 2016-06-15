/**************************************************************************************************

    nearTen - solved
    
    Given a non-negative number "num", return true if num is within 2 of a multiple of 10.
    Note: (a % b) is the remainder of dividing a by b, so (7 % 5) is 2. See also: Introduction to Mod 
***************************************************************************************************
nearTen(12) → true
nearTen(17) → false
nearTen(19) → true
nearTen(31) → true
nearTen(6) → false
nearTen(10) → true-
nearTen(11) → true
nearTen(21) → true
nearTen(22) → true
nearTen(23) → false
nearTen(54) → false
nearTen(155) → false
nearTen(158) → true
nearTen(3) → false
nearTen(1) → true
**************************************************************************************************/
package javaExample.logic1;

public class NearTen
{

    public static void main(String[] args)
    {
    	System.out.println(nearTen(19));
    }
    
    public static boolean nearTen(int num) {
        
    	if(num%10==0 || num%10 ==1 || num%10 ==2 || num%10 ==8 ||num%10 ==9)
    	{
    		return true;
    	}
    	
    	return false;
    }


}
