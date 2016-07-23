/**************************************************************************************************

    in3050 - solved
    
    Given 2 int values, return true if they are both in the range 30..40 inclusive,
    or they are both in the range 40..50 inclusive.
***************************************************************************************************
in3050(30, 31) → true
in3050(30, 41) → false
in3050(40, 50) → true
in3050(40, 51) → false	false	    
in3050(39, 50) → false	false	    
in3050(50, 39) → false	false	    
in3050(40, 39) → true	true	    
in3050(49, 48) → true	true	    
in3050(50, 40) → true	true	    
in3050(50, 51) → false	false	    
in3050(35, 36) → true	true	    
in3050(35, 45) → false	false
**************************************************************************************************/
package javaExample.warmup1;

public class In3050{

    public static void main(String[] args){

         System.out.println(in3050My(30, 31) );
         System.out.println(in3050My(30, 41) );
         System.out.println(in3050My(40, 50) );
    
    }
    
    //my Solution
    public static boolean in3050My(int a, int b) {
        return ((a >=30 && a <= 40 ) && ( b >= 30 && b <=40))   ||  ((a >= 40 && a <=50 ) && ( b >=40 && b <= 50 ));
    }
    
    public static boolean in3050(int a, int b) {
      if (a >= 30 && a <= 40 && b >= 30 && b <= 40) {
        return true;
      }
      if (a >= 40 && a <= 50 && b >= 40 && b <= 50) {
        return true;
      }
      return false;
      // This could be written as one very large expression,
      // connecting the two main parts with ||
    }
}


