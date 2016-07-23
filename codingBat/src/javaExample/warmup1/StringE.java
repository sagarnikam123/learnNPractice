/**************************************************************************************************

    stringE - solved
    
    Return true if the given string contains between 1 and 3 'e' chars.
***************************************************************************************************
stringE("Hello") → true
stringE("Heelle") → true
stringE("Heelele") → false
stringE("Hll") → false	false 
stringE("e") → true	true	    
stringE("") → false	false	
**************************************************************************************************/
package javaExample.warmup1;

public class StringE{

    public static void main(String[] args){

         System.out.println(stringEMy("Hello") );
         System.out.println(stringEMy("Heelle") );
         System.out.println(stringEMy("Heelele") );
    
    }
    
    //my Solution:
    public static boolean stringEMy(String str) {
        //String str = "Hello";
        int count =0;
        for (int i=0;i < str.length() ;i++){
            
            if(str.charAt(i)=='e'){
                count++;
                }
        }
    return (count == 1 || count == 3);
    }
    
    public static boolean stringE(String str) {
      int count = 0;

      for (int i=0; i<str.length(); i++) {
        if (str.charAt(i) == 'e') count++;
        // alternately: str.substring(i, i+1).equals("e")
      }
      return (count >= 1 && count <= 3);
    }
}



	
	
