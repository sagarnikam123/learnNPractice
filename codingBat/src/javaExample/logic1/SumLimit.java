/**************************************************************************************************

    sumLimit - solved
    
    Given 2 non-negative ints, a and b, return their sum, so long as the sum has the same number of 
    digits as a. If the sum has more digits than a, just return a without b. 
    (Note: one way to compute the number of digits of a non-negative int n is to convert it 
    to a string with String.valueOf(n) and then check the length of the string.) 
***************************************************************************************************
sumLimit(2, 3) → 5
sumLimit(8, 3) → 8
sumLimit(8, 1) → 9
sumLimit(11, 39) → 50
sumLimit(11, 99) → 11
sumLimit(0, 0) → 0
sumLimit(99, 0) → 99
sumLimit(99, 1) → 99
sumLimit(123, 1) → 124
sumLimit(1, 123) → 1
sumLimit(23, 60) → 83
sumLimit(23, 80) → 23
sumLimit(9000, 1) → 9001
sumLimit(90000000, 1) → 90000001
sumLimit(9000, 1000) → 9000
**************************************************************************************************/
package javaExample.logic1;

public class SumLimit
{

    public static void main(String[] args)
    {
    	System.out.println(sumLimit(8,1));
    }
    
    public static int sumLimit(int a, int b) {
        
    	String aDigit = String.valueOf(a);
        
    	if(String.valueOf(a+b).length() > aDigit.length() ){
    		return a;
    	}
    	
    	return a+b;
    }

}
