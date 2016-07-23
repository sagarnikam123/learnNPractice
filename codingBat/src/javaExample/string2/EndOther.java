/**************************************************************************************************

    endOther -solved
    
    Given two strings, return true if either of the strings appears at the very end of the other 
    string, ignoring upper/lower case differences (in other words, the computation should not be 
    "case sensitive"). Note: str.toLowerCase() returns the lowercase version of a string. 
***************************************************************************************************
endOther("Hiabc", "abc") → true
endOther("AbC", "HiaBc") → true
endOther("abc", "abXabc") → true
endOther("Hiabc", "abcd") → false
endOther("Hiabc", "bc") → true
endOther("Hiabcx", "bc") → false
endOther("abc", "abc") → true
endOther("xyz", "12xyz") → true
endOther("yz", "12xz") → false
endOther("Z", "12xz") → true
endOther("12", "12") → true
endOther("abcXYZ", "abcDEF") → false
endOther("ab", "ab12") → false
endOther("ab", "12ab") → true
**************************************************************************************************/
package javaExample.string2;

public class EndOther
{

    public static void main(String[] args)
    {
    	System.out.println(endOther("abc", "abXabc"));
    }
    
    public static boolean endOther(String a, String b) {
        if(a.length() ==0 || b.length()==0){
        	return false;
        }
    	
    	if(a.length() > b.length() && b.toLowerCase().equals(a.substring(a.length()-b.length(), a.length()).toLowerCase())){
    		return true;
    	}else if (b.length() > a.length() && a.toLowerCase().equals(b.substring(b.length()-a.length(),b.length()).toLowerCase())){
    		return true;
    	}else if(a.toLowerCase() == b.toLowerCase()){
    		return true;
    	} 
    	return false; 
    }


}
