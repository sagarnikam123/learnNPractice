/**************************************************************************************************

    startHi - solved
    
    Given a string, return true if the string starts with "hi" and false otherwise.
***************************************************************************************************
startHi("hi there") → true
startHi("hi") → true
startHi("hello hi") → false
startHi("he") → false
startHi("h") → false
startHi("") → false
startHi("ho hi") → false
startHi("hi ho") → true
**************************************************************************************************/
package javaExample.warmup1;

public class StartHi{

    public static void main(String[] args){

         System.out.println(startHi("hi there") );
         System.out.println(startHi("hi") );
         System.out.println(startHi("hello hi") );
    
    }
    
    public static boolean startHi(String str) {
        // First test if the string is not at least length 2
        // (so the substring() below does not go past the end).
        if (str.length() < 2) return false;
        
        // Pull out the string of the first two chars
        String firstTwo = str.substring(0, 2);
        
        // Test if it is equal to "hi"
        if (firstTwo.equals("hi")) {
          return true;
        } else {
          return false;
        }
        // This last part can be shortened to: return(firstTwo.equals("hi"));
      }
}

