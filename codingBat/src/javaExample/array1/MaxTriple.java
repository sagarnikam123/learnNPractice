/**************************************************************************************************

    maxTriple - solved
    
    Given an array of ints of odd length, look at the first, last, and middle values in the array 
    and return the largest. The array length will be a least 1. 
***************************************************************************************************
maxTriple({1, 2, 3}) → 3
maxTriple({1, 5, 3}) → 5
maxTriple({5, 2, 3}) → 5
maxTriple({1, 2, 3, 1, 1}) → 3
maxTriple({1, 7, 3, 1, 5}) → 5
maxTriple({5, 1, 3, 7, 1}) → 5
maxTriple({5, 1, 7, 3, 7, 8, 1}) → 5
maxTriple({5, 1, 7, 9, 7, 8, 1}) → 9
maxTriple({5, 1, 7, 3, 7, 8, 9}) → 9
maxTriple({2, 2, 5, 1, 1}) → 5
**************************************************************************************************/
package javaExample.array1;

public class MaxTriple
{

    public static void main(String[] args)
    {
    	int quartzComposer [] = {5, 2, 3};
    	System.out.println(maxTriple(quartzComposer));
    }
    
    public static int  maxTriple(int[] nums) {
        int largest ;
        // check first & last
    	if(nums[0] > nums[nums.length-1]){
    		if(nums[(nums.length)/2] > nums[0]){
    			largest = nums[(nums.length)/2]; 
    		}else{
    			largest = nums[0];
    		}
    		
    		
    	}else{
    		if(nums[(nums.length)/2] > nums[nums.length-1]){
    			largest = nums[(nums.length)/2];
    		}else{
    			largest = nums[nums.length-1];
    		}
    	}
    	
    	return largest;
    }


}
