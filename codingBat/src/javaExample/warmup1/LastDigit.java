/**************************************************************************************************

    lastDigit - solved

    Given two non-negative int values, return true if they have the same last digit,
    such as with 27 and 57. Note that the % "mod" operator computes remainders,
    so 17 % 10 is 7.
***************************************************************************************************
lastDigit(7, 17) → true
lastDigit(6, 17) → false
lastDigit(3, 113) → true
lastDigit(114, 113) → false	false
lastDigit(114, 4) → true	true
lastDigit(10, 0) → true	true
lastDigit(11, 0) → false	false
**************************************************************************************************/
package javaExample.warmup1;

public class LastDigit{

    public static void main(String[] args){

         System.out.println(lastDigitMy(7, 17) );
         System.out.println(lastDigitMy(6, 17) );
         System.out.println(lastDigitMy(3, 113) );

    }

    //my Solution:
    public static boolean lastDigitMy(int a, int b) {
        String aString = Integer.toString(a);
        String bString = Integer.toString(b);

        if( aString.charAt(aString.length()-1) ==   bString.charAt(bString.length()-1) ){
            return true;
        }else{return false;}
    }

     // Solution:
     public static boolean lastDigit(int a, int b) {
       // True if the last digits are the same
       return(a % 10 == b % 10);
     }

}
