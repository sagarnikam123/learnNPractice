/**************************************************************************************************

    sum2 - solved
    
    Given an array of ints, return the sum of the first 2 elements in the array.
    If the array length is less than 2, just sum up the elements that exist,
    returning 0 if the array is length 0. 
***************************************************************************************************
sum2({1, 2, 3}) → 3
sum2({1, 1}) → 2
sum2({1, 1, 1, 1}) → 2
sum2({1, 2}) → 3
sum2({1}) → 1
sum2({}) → 0
sum2({4, 5, 6}) → 9
sum2({4}) → 4
**************************************************************************************************/
package javaExample.array1;

public class Sum2
{

    public static void main(String[] args)
    {
    	int algar [] = {};
    	System.out.println(sum2(algar));
    }
    
    public static int sum2(int[] nums) {
        
    	int babhali = 0;
    	if(nums.length==0){
    		return babhali;
    	}
    	
    	for(int i =0;i<nums.length;i++){
    		if(i==0 || i ==1){
    			babhali+=nums[i];	
    		}
    	}
    	return babhali;
    }


}
