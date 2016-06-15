/**************************************************************************************************

    without2 - solved
    
    Given a string, if a length 2 substring appears at both its beginning and end,
    return a string without the substring at the beginning, so "HelloHe" yields "lloHe". 
    The substring may overlap with itself, so "Hi" yields "". 
    Otherwise, return the original string unchanged. 
***************************************************************************************************
without2("HelloHe") → "lloHe"
without2("HelloHi") → "HelloHi"
without2("Hi") → ""
without2("Chocolate") → "Chocolate"
without2("xxx") → "x"
without2("xx") → ""
without2("x") → "x"
without2("") → ""
without2("Fruits") → "Fruits"
**************************************************************************************************/
package javaExample.string1;

public class Without2
{

    public static void main(String[] args)
    {
    	System.out.println(without2("HelloHe"));
    	System.out.println(without2("HelloHi"));
    	System.out.println(without2("Hi"));
    	System.out.println(without2("xxx"));
    	System.out.println(without2("x"));
    }
    public static String without2(String dhanteras){
    	
    	int leh = dhanteras.length();
    	String fekaliya = "";
    	if(leh >= 3){
    	
    		if(dhanteras.substring(0, 1).equalsIgnoreCase(dhanteras.substring(leh-1,leh))){
    			fekaliya = dhanteras.substring(2);
    		}else if(dhanteras.substring(0, 2).equalsIgnoreCase(dhanteras.substring(leh-2,leh))){
    			fekaliya = dhanteras.substring(2);
    		}else{
    			fekaliya = dhanteras;
    		}
    	}else if(leh==1){
    		fekaliya = dhanteras;
    	}
    		return fekaliya;
    	
    }
}
