/**************************************************************************************************

    arrayCount9n - solved

    Given an array of ints, return the number of 9's in the array.
***************************************************************************************************
arrayCount9({1, 2, 9}) → 1
arrayCount9({1, 9, 9}) → 2
arrayCount9({1, 9, 9, 3, 9}) → 3
arrayCount9({1, 2, 3}) → 0
arrayCount9({}) → 0
arrayCount9({4, 2, 4, 3, 1}) → 0
arrayCount9({9, 2, 4, 3, 1}) → 1
**************************************************************************************************/
package javaExample.warmup2;

public class ArrayCount9
{

    public static void main(String[] args)
    {
    	System.out.println(arrayCount9(1, 2, 9));
    	System.out.println(arrayCount9(1, 9, 9));
    	System.out.println(arrayCount9(1, 9, 9, 3, 9));
    }

    private static int arrayCount9(int ... actor){
    	int cultural9 = 0;

    	for(int i =0;i<actor.length;i++){
    	if(actor[i]==9)
    		cultural9++;
    	}
    	return cultural9;
    }

}
