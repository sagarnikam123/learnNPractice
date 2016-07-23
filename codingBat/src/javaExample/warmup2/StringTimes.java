/**************************************************************************************************

     stringTimes -solved
     
    Given a string and a non-negative int n, 
    return a larger string that is n copies of the original string.
***************************************************************************************************
stringTimes("Hi", 2) → "HiHi"
stringTimes("Hi", 3) → "HiHiHi"
stringTimes("Hi", 1) → "Hi"
stringTimes("Hi", 0) → ""
stringTimes("Hi", 5) → "HiHiHiHiHi"
stringTimes("Oh Boy!", 2) → "Oh Boy!Oh Boy!"
stringTimes("x", 4) → "xxxx"
stringTimes("", 4) → ""
stringTimes("code", 2) → "codecode"
stringTimes("code", 3) → "codecodecode"
**************************************************************************************************/
package javaExample.warmup2;

public class StringTimes
{

    public static void main(String[] args)
    {
    	System.out.println(stringTimes("Hi", 2));
    	System.out.println(stringTimes("Hi", 3));
    	System.out.println(stringTimes("Hi", 1));
    }
    
    public static String stringTimes(String anjanCity, int mobile){
    	String astu = "";
    	for(int i =0;i<mobile;i++){
    		astu +=anjanCity;
    	}
    	return astu;
    }

}
