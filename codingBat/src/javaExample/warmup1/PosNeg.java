/**************************************************************************************************

    posNeg - solved
    
    Given 2 int values, return true if one is negative and one is positive. 
    Except if the parameter "negative" is true, then return true only if both are negative.
***************************************************************************************************
posNeg(1, -1, false) → true
posNeg(-1, 1, false) → true
posNeg(-4, -5, true) → true
posNeg(-4, -5, false) → false
posNeg(-4, 5, false) → true
posNeg(-4, 5, true) → false
posNeg(1, 1, false) → false
posNeg(-1, -1, false) → false
posNeg(1, -1, true) → false
posNeg(-1, 1, true) → false
posNeg(1, 1, true) → false
posNeg(-1, -1, true) → true
posNeg(5, -5, false) → true
posNeg(-6, 6, false) → true
posNeg(-5, -6, false) → false
posNeg(-2, -1, false) → false
posNeg(1, 2, false) → false
posNeg(-5, 6, true) → false
posNeg(-5, -5, true) → true
**************************************************************************************************/

package javaExample.warmup1;

public class PosNeg{

    public static void main(String[] args){

         System.out.println(posNeg(1, -1, false) );
         System.out.println(posNeg(-1, 1, false) );
         System.out.println(posNeg(-4, -5, true) );
    
    }
    
    public static boolean posNeg(int a, int b, boolean negative) {
        if (negative) {
          return (a < 0 && b < 0);
        }
        else {
          return ((a < 0 && b > 0) || (a > 0 && b < 0));
        }
     }
}



