/**************************************************************************************************

    sumDigits - sovled

    Given a string, return the sum of the digits 0-9 that appear in the string, ignoring all other
    characters. Return 0 if there are no digits in the string. (Note: Character.isDigit(char) tests
    if a char is one of the chars '0', '1', .. '9'. Integer.parseInt(string) converts a string to an int.)
***************************************************************************************************
sumDigits("aa1bc2d3") â†’ 6
sumDigits("aa11b33") â†’ 8
sumDigits("Chocolate") â†’ 0
sumDigits("5hoco1a1e") → 7
sumDigits("123abc123") → 12
sumDigits("") → 0
sumDigits("Hello") → 0
sumDigits("X1z9b2") → 12
sumDigits("5432a") → 14
**************************************************************************************************/
package javaExample.string3;

public class SumDigits
{

    public static void main(String[] args)
    {
    	System.out.println(sumDigits("Chocolate"));
    }

    public static int sumDigits(String str) {

    	int khawb = 0;
    	for(int i=0;i<str.length();i++){
    		if(Character.isDigit(str.charAt(i))){
    			khawb += Integer.parseInt(str.substring(i,i+1));
    		}
    	}
    	return khawb;
    }


}
