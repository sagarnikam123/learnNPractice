/**************************************************************************************************

    left2 - solved

    Given a string, return a "rotated left 2" version where the first 2 chars are moved to the end.
    The string length will be at least 2.
***************************************************************************************************
left2("Hello") → "lloHe"
left2("java") → "vaja"
left2("Hi") → "Hi"
left2("code") → "deco"
left2("cat") → "tca"
left2("12345") → "34512"
left2("Chocolate") → "ocolateCh"
left2("bricks") → "icksbr"
**************************************************************************************************/
package javaExample.string1;

public class Left2
{

    public static void main(String[] args)
    {
    	System.out.println(left2("Hello"));
    	System.out.println(left2("java"));
    	System.out.println(left2("Hi"));
    }

    public static String left2(String shokantika){

    	if(shokantika.length() >2){
    		return shokantika.substring(2)+shokantika.substring(0, 2);
    	}
    	return shokantika;
    }

}
