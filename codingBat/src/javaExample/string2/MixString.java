/**************************************************************************************************

    mixString - solved

    Given two strings, A and B, create a bigger string made of the first char of A, the first
    char of B, the second char of A, the second char of B, and so on.
    Any leftover chars go at the end of the result.
***************************************************************************************************
mixString("abc", "xyz") â†’ "axbycz"
mixString("Hi", "There") â†’ "HTihere"
mixString("xxxx", "There") â†’ "xTxhxexre"
mixString("xxx", "X") → "xXxx"
mixString("2/", "27 around") → "22/7 around"
mixString("", "Hello") → "Hello"
mixString("Abc", "") → "Abc"
mixString("", "") → ""
mixString("a", "b") → "ab"
mixString("ax", "b") → "abx"
mixString("a", "bx") → "abx"
mixString("So", "Long") → "SLoong"
mixString("Long", "So") → "LSoong"
**************************************************************************************************/
package javaExample.string2;

public class MixString
{

    public static void main(String[] args)
    {
    	System.out.println(mixString("Long", "So"));
    }

    public static String mixString(String a, String b) {

    	String kuthetari = "";
    	int iterator = 0;

    	if(a.length()==0)return b;
    	if(b.length()==0) return a;

    	if(a.length() > b.length()){
    		iterator = a.length();
    	}else{
    		iterator = b.length();
    	}

    	for(int i=0; i < iterator;i++){

    		if(i < a.length()){ kuthetari += a.substring(i, i+1); }
    		if(i < b.length()){ kuthetari += b.substring(i, i+1); }
    	}

    	return kuthetari;
    }


}
