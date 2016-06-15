/**************************************************************************************************

    xyzMiddle - solved
    
    Given a string, does "xyz" appear in the middle of the string? To define middle, we'll say that
    the number of chars to the left and right of the "xyz" must differ by at most one.
    This problem is harder than it looks. 
***************************************************************************************************
xyzMiddle("AAxyzBB") â†’ true
xyzMiddle("AxyzBB") â†’ true
xyzMiddle("AxyzBBB") â†’ false
xyzMiddle("AxyzBBBB") → false
xyzMiddle("AAAxyzB") → false
xyzMiddle("AAAxyzBB") → true
xyzMiddle("AAAAxyzBB") → false
xyzMiddle("AAAAAxyzBBB") → false
xyzMiddle("1x345xyz12x4") → true
xyzMiddle("xyzAxyzBBB") → true
xyzMiddle("xyzAxyzBxyz") → true
xyzMiddle("xyzxyzAxyzBxyzxyz") → true
xyzMiddle("xyzxyzxyzBxyzxyz") → true
xyzMiddle("xyzxyzAxyzxyzxyz") → true
xyzMiddle("xyzxyzAxyzxyzxy") → false
xyzMiddle("AxyzxyzBB") → false
xyzMiddle("") → false
xyzMiddle("x") → false
xyzMiddle("xy") → false
xyzMiddle("xyz") → true
xyzMiddle("xyzz") → true
**************************************************************************************************/
package javaExample.string2;

public class XyzMiddle
{

    public static void main(String[] args)
    {
    	System.out.println(xyzMiddle("xyzxyzAxyzxyzxyz"));
    }
    
    public static boolean xyzMiddle(String str) {
        
    	int leftChars = 0;
    	int rightChars = 0;
    	
    	if(str.length() <3) return false;
    	
    	for(int i =0;i<str.length()-3;i++){
    		if(str.substring(i, i+3).equals("xyz")){
    			leftChars = str.substring(0, i).length();
    			rightChars = str.substring(i+3, str.length()).length();
    			if(Math.abs(rightChars-leftChars) <= 1){
    	    		return true;
    	    	}
    		}
    	}
    	if(Math.abs(rightChars-leftChars) > 1){
    		return false;
    	}
    	
    	return true;
    }


}