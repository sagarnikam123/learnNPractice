/**************************************************************************************************


    sameEnds - solved

    Given a string, return the longest substring that appears at both the beginning and end of the
    string without overlapping. For example, sameEnds("abXab") is "ab".
***************************************************************************************************
sameEnds("abXYab") → "ab"
sameEnds("xx") → "x"
sameEnds("xxx") → "x"
sameEnds("xxxx") → "xx"-
sameEnds("javaXYZjava") → "java"
sameEnds("javajava") → "java"
sameEnds("xavaXYZjava") → ""
sameEnds("Hello! and Hello!") → "Hello!"
sameEnds("x") → ""
sameEnds("") → ""
sameEnds("abcb") → ""
sameEnds("mymmy") → "my"
**************************************************************************************************/
package javaExample.string3;

public class SameEnds
{

    public static void main(String[] args)
    {
    	System.out.println(sameEnds("mymmy"));
    }

    public static String sameEnds(String string) {
    	 String tereBin = "";

     	for(int i=0,j =string.length()-1;i<string.length()/2;i++,j--){

     		if(string.substring(0, i+1).equals( string.substring(j,string.length()) ) ){
     			tereBin =string.substring(0, i+1);
     		}

     	}

     	return tereBin;
    }


}
