/**************************************************************************************************

    more20 - solved
    
    Return true if the given non-negative number is 1 or 2 more than a multiple of 20. 
***************************************************************************************************
more20(20) → false
more20(21) → true
more20(22) → true
more20(23) → false
more20(25) → false
more20(30) → false
more20(31) → false
more20(59) → false
more20(60) → false
more20(61) → true
more20(62) → true
more20(1020) → false
more20(1021) → true
more20(1000) → false
more20(1001) → true
more20(50) → false
more20(55) → false
more20(40) → false
more20(41) → true
more20(39) → false
more20(42) → true
**************************************************************************************************/
package javaExample.logic1;

public class More20
{

    public static void main(String[] args)
    {
    	System.out.println(more20(42));
    }
    
    public static boolean more20(int n) {
    	
    	if(n <=20){
    		if(n==21 || n==22) return true;
    		return false;
    	}
    	
    	int remainder = n%20;
    	
    	if(remainder ==1 ||remainder ==2){
    		return true;
    	}
    	
    	return false;
    }

}
