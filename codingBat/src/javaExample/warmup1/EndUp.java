/***************************************************************************************************

    endUp - solved
    
    Given a string, return a new string where the last 3 chars are now in upper case.
    If the string has less than 3 chars, uppercase whatever is there.
    Note that str.toUpperCase() returns the uppercase version of a string.
***************************************************************************************************
endUp("Hello") → "HeLLO"
endUp("hi there") → "hi thERE"
endUp("hi") → "HI"
endUp("woo hoo") → "woo HOO"	"woo HOO"	   
endUp("xyz12") → "xyZ12"	"xyZ12"   
endUp("x") → "X"	"X"	    
endUp("") → ""	""	
**************************************************************************************************/

package javaExample.warmup1;

public class EndUp{

    public static void main(String[] args){

         System.out.println(endUpMy("Hello") );
         System.out.println(endUpMy("hi there") );
         System.out.println(endUpMy("hi") );
    
    }
    
    public static String endUp(String str) {
        if (str.length() <= 3) return str.toUpperCase();
        int cut = str.length() - 3;
        String front = str.substring(0, cut);
        String back  = str.substring(cut);  // this takes from cut to the end
        
        return front + back.toUpperCase();
     }
    
    // my Solution:
    public static String endUpMy(String str) {
        int end = str.length();
        if(str.length() >= 3){
            String prePart = str.substring(0, end-3);
            String postPart = str.substring(end-3,end).toUpperCase();
            
            return prePart+ postPart;
        }else{
            return str.toUpperCase();
        }
    }
    
}




