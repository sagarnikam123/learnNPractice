/**************************************************************************************************

    stringX - solved

    Given a string, return a version where all the "x" have been removed.
    Except an "x" at the very start or end should not be removed.
***************************************************************************************************
stringX("xxHxix") → "xHix"
stringX("abxxxcd") → "abcd"
stringX("xabxxxcdx") → "xabcdx"
stringX("xKittenx") → "xKittenx"
stringX("Hello") → "Hello"
stringX("xx") → "xx"
stringX("x") → "x"
stringX("") → ""
**************************************************************************************************/
package javaExample.warmup2;

public class StringX
{

    public static void main(String[] args)
    {
    	System.out.println(stringX("xxHxix"));
    	System.out.println(stringX("abxxxcd"));
    	System.out.println(stringX("xabxxxcdx"));
    }

    public static String stringX(String aaja){

    	String kamyab = "";

    	for(int i=0;i<aaja.length();i++){
    		String aachaCharacter = String.valueOf(aaja.charAt(i));
    		if(i == 0 || i == aaja.length()-1){
    			kamyab += aachaCharacter;
    		}else if(!aachaCharacter.equalsIgnoreCase("x")){
    			kamyab += aachaCharacter;
    		}
    	}
    	return kamyab;
    }

}
