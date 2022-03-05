/**************************************************************************************************

    startWord - solved

    Given a string and a second "word" string, we'll say that the word matches the string
    if it appears at the front of the string, except its first char does not need to match exactly.
    On a match, return the front of the string, or otherwise return the empty string.
    So, so with the string "hippo" the word "hi" returns "hi" and "xip" returns "hip".
    The word will be at least length 1.
***************************************************************************************************
startWord("hippo", "hi") → "hi"
startWord("hippo", "xip") → "hip"
startWord("hippo", "i") → "h"
startWord("hippo", "ix") → ""
startWord("h", "ix") → ""
startWord("", "i") → ""
startWord("hip", "zi") → "hi"
startWord("hip", "zip") → "hip"
startWord("hip", "zig") → ""
startWord("h", "z") → "h"
startWord("hippo", "xippo") → "hippo"
startWord("hippo", "xyz") → ""
startWord("hippo", "hip") → "hip"
startWord("kitten", "cit") → "kit"
startWord("kit", "cit") → "kit"
**************************************************************************************************/
package javaExample.string1;

public class StartWord
{

    public static void main(String[] args)
    {
	   	System.out.println(startWord("hippo", "hi"));
	   	System.out.println(startWord("hippo", "xip"));
    	System.out.println(startWord("hippo", "i"));
    	System.out.println(startWord("h", "ix"));
    	System.out.println(startWord("", "i"));
    	System.out.println(startWord("hip", "zip"));
    	System.out.println(startWord("hip", "zig"));
    	System.out.println(startWord("h", "z"));
    	System.out.println(startWord("hippo", "xippo"));
    	System.out.println(startWord("kit", "cit"));
    }

    public static String startWord(String ranjha,String built){

    	// string -- word
    	int nShekoti = ranjha.length();
    	int nLength = built.length(); // always > 1

    	// if string empty or less than one
    	if(ranjha.isEmpty()){
    		return "";
    	}

    	String firstCharFirst = ranjha.substring(0,1);
    		// except first
    		if(ranjha.substring(1,nShekoti).startsWith(built.substring(1,nLength))){
    			return firstCharFirst+built.substring(1,nLength);
    		}else{
    			return "";
    		}

    }

}
