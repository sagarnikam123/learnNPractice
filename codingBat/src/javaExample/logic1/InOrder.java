/**************************************************************************************************

    inOrder - solved

    Given three ints, a b c, return true if b is greater than a, and c is greater than b.
    However, with the exception that if "bOk" is true, b does not need to be greater than a.
***************************************************************************************************
inOrder(1, 2, 4, false) → true
inOrder(1, 2, 1, false) → false
inOrder(1, 1, 2, true) → true
inOrder(3, 2, 4, false) → false
inOrder(2, 3, 4, false) → true
inOrder(3, 2, 4, true) → true
inOrder(4, 2, 2, true) → false
inOrder(4, 5, 2, true) → false
inOrder(2, 4, 6, true) → true
inOrder(7, 9, 10, false) → true
inOrder(7, 5, 6, true) → true
inOrder(7, 5, 4, true) → false
**************************************************************************************************/
package javaExample.logic1;

public class InOrder
{

    public static void main(String[] args)
    {
    	System.out.println(inOrder(1, 1, 2, true));
    }

    public static boolean inOrder(int a, int b, int c, boolean bOk) {

    	boolean baCondition = false;

    	if(bOk==true){
    		baCondition = true;
    	}else if(b > a){
    		baCondition = true;
    	}

    	if(baCondition && c > b){
    		return true;
    	}
    	return false;
    }


}
