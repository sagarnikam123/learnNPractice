/**************************************************************************************************
  
    in1020 - solved
    
    Given 2 int values, return true if either of them is in the range 10..20 inclusive.
***************************************************************************************************
in1020(12, 99) → true
in1020(21, 12) → true
in1020(8, 99) → false
in1020(99, 10) → true
in1020(20, 20) → true
in1020(21, 21) → false
in1020(9, 9) → false
**************************************************************************************************/
package javaExample.warmup1;

public class In1020{

    public static void main(String[] args){

         System.out.println(in1020(12, 99) );
         System.out.println(in1020(21, 12) );
         System.out.println(in1020(8, 99) );
    
    }
    
    public static boolean in1020(int a, int b) {
        return ((a >= 10 && a <= 20) || (b >= 10 && b <= 20));
    }
}

