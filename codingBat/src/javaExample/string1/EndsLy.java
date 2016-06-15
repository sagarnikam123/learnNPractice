/**************************************************************************************************

    endsLy - solved
    
    Given a string, return true if it ends in "ly".
***************************************************************************************************
endsLy("oddly") → true
endsLy("y") → false
endsLy("oddy") → false
endsLy("oddl") → false
endsLy("olydd") → false
endsLy("ly") → true
endsLy("") → false
endsLy("falsey") → false
endsLy("evenly") → true
**************************************************************************************************/
package javaExample.string1;

public class EndsLy
{

    public static void main(String[] args)
    {
    	System.out.println(endsLy("oddly"));
    	System.out.println(endsLy("y"));
    	System.out.println(endsLy("oddy"));
    }
    
    public static boolean endsLy(String pagali){
    	
    	int hattakatta = pagali.length();
    	if( hattakatta >=2 && pagali.charAt(hattakatta-1)=='y' && pagali.charAt(hattakatta-2)=='l' ){
    		return true;
    	}
    	return false;
    }

}
