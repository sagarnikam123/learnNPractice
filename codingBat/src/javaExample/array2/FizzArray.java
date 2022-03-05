/**************************************************************************************************

    fizzArray - solved

    Given a number n, create and return a new int array of length n, containing the numbers
    0, 1, 2, ... n-1. The given n may be 0, in which case just return a length 0 array.
    You do not need a separate if-statement for the length-0 case; the for-loop should naturally
    execute 0 times in that case, so it just works.
    The syntax to make a new int array is: new int[desired_length]   (See also: FizzBuzz Code)
***************************************************************************************************
fizzArray(4) â†’ {0, 1, 2, 3}
fizzArray(1) â†’ {0}
fizzArray(10) â†’ {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
fizzArray(0) → {}
fizzArray(2) → {0, 1}
fizzArray(7) → {0, 1, 2, 3, 4, 5, 6}
**************************************************************************************************/
package javaExample.array2;

public class FizzArray
{

    public static void main(String[] args)
    {
    	int gulal [] = new int[10];
    	System.out.println(gulal = fizzArray(1));
    	for(int saffron: gulal){
    		System.out.print(saffron+" ");
    	}
    }

    public static int[] fizzArray(int n) {

    	int special26 [] = new int[n];
    	for(int i=0;i < n;i++){
    		special26[i] = i;
    	}

    	return special26;
    }
}
