/**************************************************************************************************

    inOrderEqual - solved

    Given three ints, a b c, return true if they are in strict increasing order, such as 2 5 11,
    or 5 6 7, but not 6 5 7 or 5 5 7. However, with the exception that if "equalOk" is true,
    equality is allowed, such as 5 5 7 or 5 5 5.
***************************************************************************************************
inOrderEqual(2, 5, 11, false) → true
inOrderEqual(5, 7, 6, false) → false
inOrderEqual(5, 5, 7, true) → true
inOrderEqual(5, 5, 7, false) → false
inOrderEqual(2, 5, 4, false) → false
inOrderEqual(3, 4, 3, false) → false
inOrderEqual(3, 4, 4, false) → false
inOrderEqual(3, 4, 3, true) → false
inOrderEqual(3, 4, 4, true) → true
inOrderEqual(1, 5, 5, true) → true
inOrderEqual(5, 5, 5, true) → true
inOrderEqual(2, 2, 1, true) → false
inOrderEqual(9, 2, 2, true) → false
inOrderEqual(0, 1, 0, true) → false
**************************************************************************************************/
package javaExample.logic1;

public class InOrderEqual
{

    public static void main(String[] args)
    {
    	System.out.println(inOrderEqual(2, 5, 11, false));
    }

    public static boolean inOrderEqual(int a, int b, int c, boolean equalOk) {

    	if( (equalOk==true && a==b && b==c && a==c ) || (equalOk==true && (a==b || b==c ) && a < c ) ){
    		return true;
    	}else if(a <b && b <c){
    		return true;
    	}
    	return false;
    }


}
