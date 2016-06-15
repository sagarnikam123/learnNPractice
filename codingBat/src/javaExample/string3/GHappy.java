/**************************************************************************************************

    gHappy - solved
    
    We'll say that a lowercase 'g' in a string is "happy" if there is another 'g' immediately to
    its left or right. Return true if all the g's in the given string are happy. 
***************************************************************************************************
gHappy("xxggxx") → true
gHappy("xxgxx") → false
gHappy("xxggyygxx") → false
gHappy("g") → false-
gHappy("gg") → true
gHappy("") → true
gHappy("xxgggxyz") → true
gHappy("xxgggxyg") → false
gHappy("xxgggxygg") → true
gHappy("mgm") → false
gHappy("mggm") → true
gHappy("yyygggxyy") → true
**************************************************************************************************/
package javaExample.string3;

public class GHappy
{

    public static void main(String[] args)
    {
    	System.out.println(gHappy("yyygggxyy"));
    }
    
    public static boolean gHappy(String str) {
    	
        boolean whatReturn = false;
        
        if(str.length()==0) return true;
        
        for(int i=0;i<str.length();i++){
    		
    		if(str.charAt(i)=='g' && i+1 <str.length()){
    			// search at right
    			if(str.charAt(i+1)=='g'){
    				whatReturn = true;
    				i++;
    			}else{
        			return false;
        		}
    		}
    		if(str.charAt(i)=='g' && i-1 > 0 ){
    			// search at left
    			if(str.charAt(i-1)=='g'){
    				whatReturn = true;
    				i++;
    			}else{
        			return false;
        		}
    			
    		}	
    	}
    	
    	return whatReturn;
    }

}
