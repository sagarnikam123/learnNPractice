/**************************************************************************************************

    missingChar - solved
    
    Given a non-empty string and an int n,
    return a new string where the char at index n has been removed. 
    The value of n will be a valid index of a char in the original string 
    (i.e. n will be in the range 0..str.length()-1 inclusive).
***************************************************************************************************
missingChar("kitten", 1) → "ktten"
missingChar("kitten", 0) → "itten"
missingChar("kitten", 4) → "kittn"
missingChar("Hi", 0) → "i"
missingChar("Hi", 1) → "H"
missingChar("code", 0) → "ode"
missingChar("code", 1) → "cde"
missingChar("code", 2) → "coe"
missingChar("code", 3) → "cod"
missingChar("chocolate", 8) → "chocolat"
**************************************************************************************************/
package javaExample.warmup1;

public class MissingChar{

    public static void main(String[] args){

         System.out.println(missingChar("kitten", 1) );
         System.out.println(missingChar("kitten", 0) );
         System.out.println(missingChar("kitten", 4) );
    
    }
    
    public static String missingChar(String str, int n) {
        String front = str.substring(0, n);
        
        // Start this substring at n+1 to omit the char.
        // Can also be shortened to just str.substring(n+1)
        // which goes through the end of the string.
        String back = str.substring(n+1, str.length());
        return front + back;
      }
}

