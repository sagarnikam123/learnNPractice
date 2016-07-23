/**************************************************************************************************

    frontBack - solved
    
    Given a string, return a new string where the first and last chars have been exchanged.
***************************************************************************************************
frontBack("code") → "eodc"
frontBack("a") → "a"
frontBack("ab") → "ba"
frontBack("abc") → "cba"
frontBack("") → ""
frontBack("Chocolate") → "ehocolatC"
frontBack("aavJ") → "Java"
frontBack("hello") → "oellh"
**************************************************************************************************/
package javaExample.warmup1;

public class FrontBack{

    public static void main(String[] args){

         System.out.println(frontBack("code"));
         System.out.println(frontBack("a") );
         System.out.println(frontBack("ab"));
    
    }
    
    public static String frontBack(String str) {
        if (str.length() <= 1) return str;
        String mid = str.substring(1, str.length()-1);
        
        // last + mid + first
        return str.charAt(str.length()-1) + mid + str.charAt(0);
      }
}


