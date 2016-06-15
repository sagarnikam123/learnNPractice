/**************************************************************************************************

    startOz - solved
    
    Given a string, return a string made of the first 2 chars (if present),
    however include first char only if it is 'o' and 
    include the second only if it is 'z', so "ozymandias" yields "oz".
***************************************************************************************************
startOz("ozymandias") → "oz"
startOz("bzoo") → "z"
startOz("oxx") → "o"
startOz("oz") → "oz"
startOz("ounce") → "o"
startOz("o") → "o"
startOz("abc") → ""
startOz("") → ""
startOz("zoo") → ""
startOz("aztec") → "z"
startOz("zzzz") → "z"
startOz("oznic") → "oz"
**************************************************************************************************/
package javaExample.warmup1;

public class StartOz{

    public static void main(String[] args){

         System.out.println(startOz("ozymandias") );
         System.out.println(startOz("bzoo") );
         System.out.println(startOz("oxx") );
    
    }
    
    public static String startOz(String str) {
        String result = "";
        
        if (str.length() >= 1 && str.charAt(0)=='o') {
          result = result + str.charAt(0);
        }
        
        if (str.length() >= 2 && str.charAt(1)=='z') {
          result = result + str.charAt(1);
        }
        return result;
      }
}

