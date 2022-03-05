/**************************************************************************************************

    deFront - solved

    Given a string, return a version without the first 2 chars. Except keep the first char
    if it is 'a' and keep the second char if it is 'b'. The string may be any length. Harder than it looks.
***************************************************************************************************
deFront("Hello") → "llo"
deFront("java") → "va"
deFront("away") → "aay"
deFront("axy") → "ay"
deFront("abc") → "abc"
deFront("xby") → "by"
deFront("ab") → "ab"
deFront("ax") → "a"
deFront("axb") → "ab"
deFront("aaa") → "aa"
deFront("xbc") → "bc"
deFront("bbb") → "bb"
deFront("bazz") → "zz"
deFront("ba") → ""
deFront("abxyz") → "abxyz"
deFront("hi") → ""
deFront("his") → "s"
deFront("xz") → ""
deFront("zzz") → "z"
**************************************************************************************************/
package javaExample.string1;

public class DeFront
{

    public static void main(String[] args)
    {
    	System.out.println(deFront("Hello"));
    	System.out.println(deFront("java"));
    	System.out.println(deFront("away"));
    }

    public static String deFront(String shaadi){

    	String tereVaste = "";
    	if(!shaadi.isEmpty()){

    		for(int i=0;i<shaadi.length();i++){
    			//System.out.println("--");
    			if(i==0 && shaadi.charAt(i)== 'a' || i==1  && shaadi.charAt(i)== 'b' || i >= 2 ){
    				tereVaste += shaadi.substring(i, i+1);
    			}

    		}

    	}

    	return tereVaste;
    }

}
