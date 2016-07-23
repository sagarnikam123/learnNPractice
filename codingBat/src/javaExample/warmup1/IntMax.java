/**************************************************************************************************

    intMax - solved
    
    Given three int values, a b c, return the largest.
***************************************************************************************************
intMax(1, 2, 3) → 3
intMax(1, 3, 2) → 3
intMax(3, 2, 1) → 3
intMax(9, 3, 3) → 9	9	    
intMax(3, 9, 3) → 9	9	    
intMax(3, 3, 9) → 9	9	    
intMax(8, 2, 3) → 8	8	    
intMax(-3, -1, -2) → -1	-1    
intMax(6, 2, 5) → 6	6	    
intMax(5, 6, 2) → 6	6	    
intMax(5, 2, 6) → 6	6
**************************************************************************************************/
package javaExample.warmup1;

public class IntMax{

    public static void main(String[] args){

         System.out.println(intMaxMy(1, 2, 3) );
         System.out.println(intMaxMy(1, 3, 2) );
         System.out.println(intMaxMy(3, 2, 1) );
    
    }
    
    public static int intMaxMy(int a, int b, int c) { 
        
        // my Solution
    if(a > b && a >c){
        return a;
    }else if(b > c && b >a){
        return b;
    }else {
        return c;
        }
    }
    
    // Solution:
    public static int intMax(int a, int b, int c) {
      int max;
      // First check between a and b
      if (a > b) {
        max = a;
      } else {
        max = b;
      }
      
      // Now check between max and c
      if (c > max) {
        max = c;
      }
      return max;
      // Could use the built in Math.max(x, y) function which selects the larger
      // of two values.
    }
    
    
}




