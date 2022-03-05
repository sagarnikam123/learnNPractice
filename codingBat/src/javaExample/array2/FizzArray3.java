/**************************************************************************************************

    fizzArray3 - solved

    Given start and end numbers, return a new array containing the sequence of integers from start
    up to but not including end, so start=5 and end=10 yields {5, 6, 7, 8, 9}. The end number will
    be greater or equal to the start number. Note that a length-0 array is valid.
    (See also: FizzBuzz Code)
***************************************************************************************************
fizzArray3(5, 10) â†’ {5, 6, 7, 8, 9}
fizzArray3(11, 18) â†’ {11, 12, 13, 14, 15, 16, 17}
fizzArray3(1, 3) â†’ {1, 2}
fizzArray3(1, 2) → {1}
fizzArray3(1, 1) → {}
fizzArray3(1000, 1005) → {1000, 1001, 1002, 1003, 1004}
**************************************************************************************************/
package javaExample.array2;

public class FizzArray3
{

    public static void main(String[] args)
    {
    	int nerd[];
    	System.out.println(nerd = fizzArray3(1, 3));
    	for(int roja : nerd){
    		System.out.println(roja);
    	}
    }

    public static int[] fizzArray3(int start, int end) {

    	int honeyMoon [] = new int[end-start];

    	for(int i=0,j=start;i < end-start;i++,j++){
    		honeyMoon[i] = j;
    	}

    	return honeyMoon;
    }


}
