/**************************************************************************************************

    sumDouble - solved

    Given two int values, return their sum. Unless the two values are the same,
    then return double their sum.
***************************************************************************************************
sumDouble(1, 2) → 3
sumDouble(3, 2) → 5
sumDouble(2, 2) → 8
sumDouble(-1, 0) → -1
sumDouble(3, 3) → 12
sumDouble(0, 0) → 0
sumDouble(0, 1) → 1
sumDouble(3, 4) → 7
**************************************************************************************************/
package javaExample.warmup1;


public class SumDouble{

    public static void main(String[] args){

         System.out.println(sumDouble(1, 2) );
         System.out.println(sumDouble(3, 2) );
         System.out.println(sumDouble(2, 2) );

    }

    public static int sumDouble(int a, int b) {
        // Store the sum in a local variable
        int sum = a + b;

        // Double it if a and b are the same
        if (a == b) {
          sum = sum * 2;
        }
        return sum;
      }
}
