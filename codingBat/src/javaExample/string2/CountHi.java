/**************************************************************************************************

    countHi - solved

    Return the number of times that the string "hi" appears anywhere in the given string.
***************************************************************************************************
countHi("abc hi ho") → 1
countHi("ABChi hi") → 2
countHi("hihi") → 2
countHi("hiHIhi") → 2
countHi("") → 0
countHi("h") → 0
countHi("hi") → 1
countHi("Hi is no HI on ahI") → 0
countHi("hiho not HOHIhi") → 2
**************************************************************************************************/
package javaExample.string2;

public class CountHi
{

    public static void main(String[] args)
    {
    	System.out.println(countHi("hihi"));
    }

    public static int countHi(String str) {
    	int kitiHi = 0;

    	if(str.length() < 2){
    		return kitiHi;
    	}
    	for(int i=0;i<str.length()-1;i++){
    		if(str.charAt(i)=='h' && str.charAt(i+1)=='i') kitiHi++;
    	}
        return kitiHi;
    }


}
