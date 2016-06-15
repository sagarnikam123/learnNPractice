/***************************************************************************************************

    everyNth - solved
    
    Given a non-empty string and an int N, 
    return the string made starting with char 0, 
    and then every Nth char of the string. 
    So if N is 3, use char 0, 3, 6, ... and so on. N is 1 or more.
***************************************************************************************************
everyNth("Miracle", 2) → "Mrce"
everyNth("abcdefg", 2) → "aceg"
everyNth("abcdefg", 3) → "adg"
everyNth("Chocolate", 3) → "Cca"	"Cca"	    
everyNth("Chocolates", 3) → "Ccas"	"Ccas"	    
everyNth("Chocolates", 4) → "Coe"	"Coe"	    
everyNth("Chocolates", 100) → "C"	"C"	
**************************************************************************************************/
package javaExample.warmup1;

public class EveryNth{

    public static void main(String[] args){

         System.out.println(everyNthMy("Miracle", 2) );
         System.out.println(everyNthMy("abcdefg", 2));
         System.out.println(everyNthMy("abcdefg", 3) );
    
    }
    
    public static String everyNth(String str, int n) {
        String result = "";
        
        // Look at every nth char
        for (int i=0; i<str.length(); i = i + n) {
          result = result + str.charAt(i);
        }
        return result;
      }


    // my Solution:
    public static String everyNthMy(String str, int n) {
      String returnString =str.substring(0,1);
      for(int i=1;i < str.length();i++){
          if(i % n == 0 ) returnString += str.charAt(i);
      }
      return returnString;
    }
    
}
