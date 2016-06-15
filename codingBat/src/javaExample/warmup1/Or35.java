/**************************************************************************************************

    or35 - solved
    
    Return true if the given non-negative number is a multiple of 3 or a multiple of 5. 
    Use the % "mod" operator -- see Introduction to Mod
***************************************************************************************************
or35(3) → true
or35(10) → true
or35(8) → false
or35(15) → true
or35(5) → true
or35(9) → true
or35(4) → false
or35(7) → false
or35(6) → true
or35(17) → false
or35(18) → true
or35(29) → false
or35(20) → true
or35(21) → true
or35(22) → false
or35(45) → true
or35(99) → true
or35(100) → true
or35(101) → false
or35(121) → false
or35(122) → false
or35(123) → true
**************************************************************************************************/
package javaExample.warmup1;

public class Or35{

    public static void main(String[] args){

         System.out.println(or35(3) );
         System.out.println(or35(10) );
         System.out.println(or35(8) );
    
    }
    
    public static boolean or35(int n) {
        return (n % 3 == 0) || (n % 5 == 0);
      }
}


