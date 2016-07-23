/**************************************************************************************************

    fizzString - solved - H
    
    Given a string str, if the string starts with "f" return "Fizz". If the string ends with "b" 
    return "Buzz". If both the "f" and "b" conditions are true, return "FizzBuzz". 
    In all other cases, return the string unchanged. (See also: FizzBuzz Code) 
***************************************************************************************************
fizzString("fig") → "Fizz"
fizzString("dib") → "Buzz"
fizzString("fib") → "FizzBuzz"
fizzString("abc") → "abc"
fizzString("fooo") → "Fizz"
fizzString("booo") → "booo"
fizzString("ooob") → "Buzz"
fizzString("fooob") → "FizzBuzz"
fizzString("f") → "Fizz"
fizzString("b") → "Buzz"
fizzString("abcb") → "Buzz"
fizzString("Hello") → "Hello"
fizzString("Hellob") → "Buzz"
fizzString("af") → "af"
fizzString("bf") → "bf"
fizzString("fb") → "FizzBuzz"
**************************************************************************************************/
package javaExample.logic1;

public class FizzString
{

    public static void main(String[] args)
    {
    	System.out.println(fizzString("fib"));
    }
    
    public static String fizzString(String str) {
       
        if(str.charAt(0)=='f' && str.charAt(str.length()-1)=='b' ){
        	return "FizzBuzz";
        }else if(str.charAt(0)=='f'){
    		return "Fizz";
    	}else if(str.charAt(str.length()-1)=='b'){
        	return "Buzz";
        }
        
    	return str;
    }


}
