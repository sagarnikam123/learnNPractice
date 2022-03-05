/**************************************************************************************************

    arrayFront9 - solved

    Given an array of ints, return true if one of the first 4 elements in the array is a 9.
    The array length may be less than 4.
***************************************************************************************************
arrayFront9({1, 2, 9, 3, 4}) → true
arrayFront9({1, 2, 3, 4, 9}) → false
arrayFront9({1, 2, 3, 4, 5}) → false
arrayFront9({9, 2, 3}) → true
arrayFront9({1, 9, 9}) → true
arrayFront9({1, 2, 3}) → false
arrayFront9({1, 9}) → true
arrayFront9({5, 5}) → false
arrayFront9({2}) → false
arrayFront9({9}) → true
arrayFront9({}) → false
arrayFront9({3, 9, 2, 3, 3}) → true
**************************************************************************************************/
package javaExample.warmup2;

public class ArrayFront9
{

    public static void main(String[] args)
    {
    	System.out.println(arrayFront9(1, 2, 9, 3, 4));
    	System.out.println(arrayFront9(1, 2, 3, 4, 9));
    	System.out.println(arrayFront9(1, 2, 3, 4, 5));
    }

    // myCode
    public static boolean arrayFront9(int... melange){
    	for(int i = 0 ;i< melange.length;i++){
    		if(melange[i]==9 && i<=3){
    			return true;
    		}
    	}
    	return false;
    }

    public boolean arrayFront9Std(int[] nums) {
    	  // First figure the end for the loop
    	  int end = nums.length;
    	  if (end > 4) end = 4;

    	  for (int i=0; i<end; i++) {
    	    if (nums[i] == 9) return true;
    	  }
    	  return false;
    	}


}
