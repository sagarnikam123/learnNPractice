/**************************************************************************************************

    stringMatch - solved
    
    Given 2 strings, a and b, return the number of the positions where they contain 
    the same length 2 substring. So "xxcaazz" and "xxbaaz" yields 3, since the "xx", "aa", 
    and "az" substrings appear in the same place in both strings. 
***************************************************************************************************
stringMatch("xxcaazz", "xxbaaz") → 3
stringMatch("abc", "abc") → 2
stringMatch("abc", "axc") → 0
stringMatch("hello", "he") → 1
stringMatch("he", "hello") → 1
stringMatch("h", "hello") → 0
stringMatch("", "hello") → 0
stringMatch("aabbccdd", "abbbxxd") → 1
stringMatch("aaxxaaxx", "iaxxai") → 3
stringMatch("iaxxai", "aaxxaaxx") → 3
**************************************************************************************************/
package javaExample.warmup2;

public class StringMatch
{

    public static void main(String[] args)
    {
    	System.out.println(stringMatch("xxcaazz", "xxbaaz"));
    	System.out.println(stringMatch("abc", "abc"));
    	System.out.println(stringMatch("abc", "axc"));
    	System.out.println(stringMatch("aabbccdd", "abbbxxd"));
    	System.out.println(stringMatch("aaxxaaxx", "iaxxai"));
    	System.out.println(stringMatch("iaxxai", "aaxxaaxx"));
    }
    
    public static int stringMatch(String a,String b){
    	
    	  // Figure which string is shorter.
    	  int len = Math.min(a.length(), b.length());
    	  int count = 0;
    	  
    	  // Look at both substrings starting at i
    	  for (int i=0; i<len-1; i++) {
    	    String aSub = a.substring(i, i+2);
    	    String bSub = b.substring(i, i+2);
    	    if (aSub.equals(bSub)) {  // Use .equals() with strings
    	      count++;
    	    }
    	  }

    	  return count;
    	

    }

}
