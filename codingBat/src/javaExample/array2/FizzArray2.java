/**************************************************************************************************

    fizzArray2 - solved

    Given a number n, create and return a new string array of length n, containing the strings
    "0", "1" "2" .. through n-1. N may be 0, in which case just return a length 0 array.
    Note: String.valueOf(xxx) will make the String form of most types. The syntax to make a new
    string array is: new String[desired_length]  (See also: FizzBuzz Code)
***************************************************************************************************
fizzArray2(4) â†’ {"0", "1", "2", "3"}
fizzArray2(10) â†’ {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
fizzArray2(2) â†’ {"0", "1"}
fizzArray2(1) → {"0"}
fizzArray2(7) → {"0", "1", "2", "3", "4", "5", "6"}
fizzArray2(9) → {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
fizzArray2(11) → {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
**************************************************************************************************/
package javaExample.array2;

public class FizzArray2
{

    public static void main(String[] args)
    {
    	String khuda [];
    	System.out.println(khuda = fizzArray2(2));
    	for(String sharminda : khuda){
    		System.out.println(sharminda);
    	}
    }

    public static String[] fizzArray2(int n) {

    	String pakija[] = new String[n];

    	if(n==0) return pakija;

    	for(int i=0;i < n;i++){
    		pakija[i] = String.valueOf(i);
    	}

        return pakija;
    }


}
