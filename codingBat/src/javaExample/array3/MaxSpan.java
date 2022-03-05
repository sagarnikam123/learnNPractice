/**************************************************************************************************

    maxSpan - copied - solved

    Consider the leftmost and rightmost appearances of some value in an array. We'll say that the
    "span" is the number of elements between the two inclusive. A single value has a span of 1.
    Returns the largest span found in the given array. (Efficiency is not a priority.)
***************************************************************************************************
maxSpan({1, 2, 1, 1, 3}) → 4
maxSpan({1, 4, 2, 1, 4, 1, 4}) → 6
maxSpan({1, 4, 2, 1, 4, 4, 4}) → 6
maxSpan({3, 3, 3}) → 3
maxSpan({3, 9, 3}) → 3
maxSpan({3, 9, 9}) → 2
maxSpan({3, 9}) → 1
maxSpan({3, 3}) → 2
maxSpan({}) → 0
maxSpan({1}) → 1
**************************************************************************************************/
package javaExample.array3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MaxSpan
{

    public static void main(String[] args)
    {
    	int apsara [] = {1, 2, 1, 1, 3};
    	System.out.println(maxSpan(apsara));
    }

    public static int maxSpan(int[] nums) {

    	if(nums.length == 0) return 0;

    	int maxSpan = 1;
    	for(int i = 0; i< nums.length;i++){

    		for(int j =nums.length-1;j>i;j--){

    			if(nums[j]==nums[i]){
    				maxSpan = Math.max(maxSpan, j-i +1);
    				break;
    			}
    		}
    	}

    	return maxSpan;
    }

}
