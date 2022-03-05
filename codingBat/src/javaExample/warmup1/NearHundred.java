/**************************************************************************************************

    nearHundred - solved

    Given an int n, return true if it is within 10 of 100 or 200.
    Note: Math.abs(num) computes the absolute value of a number.
**************************************************************************************************
nearHundred(93) → true
nearHundred(90) → true
nearHundred(89) → false
nearHundred(110) → true
nearHundred(111) → false
nearHundred(121) → false
nearHundred(0) → false
nearHundred(5) → false
nearHundred(191) → true
nearHundred(189) → false
nearHundred(190) → true
nearHundred(200) → true
nearHundred(210) → true
nearHundred(211) → false
nearHundred(290) → false
**************************************************************************************************/
package javaExample.warmup1;

public class NearHundred{

    public static void main(String[] args){

         System.out.println(nearHundred(93) );
         System.out.println(nearHundred(90)  );
         System.out.println(nearHundred(89) );

    }

    public static boolean nearHundred(int n) {
        return ((Math.abs(100 - n) <= 10) ||
          (Math.abs(200 - n) <= 10));
      }
}
