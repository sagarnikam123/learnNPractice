/**************************************************************************************************

    twoAsOne - solved
    
    Given three ints, a b c, return true if it is possible to add two of the ints to get the third.
***************************************************************************************************
twoAsOne(1, 2, 3) → true
twoAsOne(3, 1, 2) → true
twoAsOne(3, 2, 2) → false
twoAsOne(2, 3, 1) → true
twoAsOne(5, 3, -2) → true
twoAsOne(5, 3, -3) → false
twoAsOne(2, 5, 3) → true
twoAsOne(9, 5, 5) → false
twoAsOne(9, 4, 5) → true
twoAsOne(5, 4, 9) → true
twoAsOne(3, 3, 0) → true
twoAsOne(3, 3, 2) → false
**************************************************************************************************/
package javaExample.logic1;

public class TwoAsOne
{

    public static void main(String[] args)
    {
    	System.out.println(twoAsOne(3, 2, 2));
    }
    
    public static boolean twoAsOne(int a, int b, int c) {
        
    	if(a+b ==c || a == b+c || b ==a+c){
    		return true;
    	}
    	
    	return false;
    }

}
