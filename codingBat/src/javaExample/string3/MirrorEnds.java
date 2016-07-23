/**************************************************************************************************

    mirrorEnds - solved
    
    Given a string, look for a mirror image (backwards) string at both the beginning and end of 
    the given string. In other words, zero or more characters at the very begining of the given string,
    and at the very end of the string in reverse order (possibly overlapping).
    For example, the string "abXYZba" has the mirror end "ab". 
***************************************************************************************************
mirrorEnds("abXYZba") â†’ "ab"
mirrorEnds("abca") â†’ "a"
mirrorEnds("aba") â†’ "aba"
mirrorEnds("abab") → ""
mirrorEnds("xxx") → "xxx"
mirrorEnds("xxYxx") → "xxYxx"
mirrorEnds("Hi and iH") → "Hi "
mirrorEnds("x") → "x"
mirrorEnds("") → ""
mirrorEnds("123and then 321") → "123"
mirrorEnds("band andab") → "ba"
**************************************************************************************************/
package javaExample.string3;

public class MirrorEnds
{

    public static void main(String[] args)
    {
    	System.out.println(mirrorEnds("aba"));
    }
    
    public static String mirrorEnds(String str) {
        
    	String mirrorStarts = "";
    	for(int i=0,j=str.length()-1;i<str.length();i++,j--){
    		if(str.charAt(i)==str.charAt(j)){
    			mirrorStarts += String.valueOf(str.charAt(i));
    		}else{
    			i=str.length();
    		}
    	}
    	
    	return mirrorStarts;
    }


}
