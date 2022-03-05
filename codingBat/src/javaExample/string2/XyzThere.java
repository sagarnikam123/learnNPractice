/**************************************************************************************************

    xyzThere - solved

    Return true if the given string contains an appearance of "xyz" where the xyz is not directly
    preceeded by a period (.). So "xxyz" counts but "x.xyz" does not.
***************************************************************************************************
xyzThere("abcxyz") â†’ true
xyzThere("abc.xyz") â†’ false
xyzThere("xyz.abc") â†’ true
xyzThere("abcxy") → false
xyzThere("xyz") → true
xyzThere("xy") → false
xyzThere("x") → false
xyzThere("") → false
xyzThere("abc.xyzxyz") → true
xyzThere("abc.xxyz") → true
xyzThere(".xyz") → false
xyzThere("12.xyz") → false
xyzThere("12xyz") → true
xyzThere("1.xyz.xyz2.xyz") → false
**************************************************************************************************/
package javaExample.string2;

public class XyzThere
{

    public static void main(String[] args)
    {
    	System.out.println(xyzThere("xyz.abc"));
    }

    public static boolean xyzThere(String str) {

    	for(int i=0;i<str.length()-2;i++){

    		if(str.substring(i, i+3).equals("xyz")){
    			if(i==0) return true;
    			if(str.charAt(i-1)!='.'){
        			return true;
        		}
    		}

    	}
        return false;
    }


}
