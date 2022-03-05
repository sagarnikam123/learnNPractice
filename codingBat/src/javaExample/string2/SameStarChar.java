/**************************************************************************************************

    sameStarChar - solved - treaky

    Returns true if for every '*' (star) in the string, if there are chars both immediately before
    and after the star, they are the same.
***************************************************************************************************
sameStarChar("xy*yzz") → true
sameStarChar("xy*zzz") → false
sameStarChar("*xa*az") → true
sameStarChar("*xa*bz") → false
sameStarChar("*xa*a*") → true
sameStarChar("") → true
sameStarChar("*xa*a*a") → true
sameStarChar("*xa*a*b") → false
sameStarChar("*12*2*2") → true
sameStarChar("12*2*3*") → false
sameStarChar("abcDEF") → true
sameStarChar("XY*YYYY*Z*") → false
sameStarChar("XY*YYYY*Y*") → true
sameStarChar("12*2*3*") → false
sameStarChar("*") → true
sameStarChar("**") → true
**************************************************************************************************/
package javaExample.string2;

public class SameStarChar
{

    public static void main(String[] args)
    {
    	System.out.println(sameStarChar("abcDEF"));
    }

    public static boolean sameStarChar(String str) {

    	if(!str.contains("*")) return true;
    	int noOfStars = 0;
    	for(int i=0;i<str.length();i++){
    		if(str.charAt(i)=='*'){
    			noOfStars++;
    		}
    	}

    	if(noOfStars==str.length())return true;

    	boolean returnWhat = false;
    	for(int i=1;i<str.length()-1;i++){
    		if(str.charAt(i)=='*'){
    			if(str.charAt(i-1)==str.charAt(i+1)){
    				returnWhat= true;
    			}else{
    				returnWhat= false;
    			}
    		}
    	}
    	return returnWhat;
    }


}
