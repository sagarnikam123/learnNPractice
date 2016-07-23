/**************************************************************************************************

    stringBits - solved
    
    Given a string, return a new string made of every other char starting with the first,
    so "Hello" yields "Hlo".
***************************************************************************************************
stringBits("Hello") → "Hlo"
stringBits("Hi") → "H"
stringBits("Heeololeo") → "Hello"
stringBits("HiHiHi") → "HHH"
stringBits("") → ""
stringBits("Greetings") → "Getns"
stringBits("Chocoate") → "Coot"
stringBits("pi") → "p"
stringBits("Hello Kitten") → "HloKte"
stringBits("hxaxpxpxy") → "happy"
**************************************************************************************************/
package javaExample.warmup2;

public class StringBits
{

    public static void main(String[] args)
    {
    	System.out.println(stringBits("Hello"));
    	System.out.println(stringBits("Hi"));
    	System.out.println(stringBits("Heeololeo"));
    }
    
    public static String stringBits(String nutan){
    	
    	String foreign = "";
    	for(int i=0;i<nutan.length();i+=2){
    		foreign += nutan.substring(i,i+1);
    	}
    	return foreign;
    }

}
