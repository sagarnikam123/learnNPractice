/**************************************************************************************************

    swapEnds 
    
    Given an array of ints, swap the first and last elements in the array.
    Return the modified array. The array length will be at least 1. 
***************************************************************************************************
swapEnds({1, 2, 3, 4}) → {4, 2, 3, 1}
swapEnds({1, 2, 3}) → {3, 2, 1}
swapEnds({8, 6, 7, 9, 5}) → {5, 6, 7, 9, 8}
swapEnds({3, 1, 4, 1, 5, 9}) → {9, 1, 4, 1, 5, 3}
swapEnds({1, 2}) → {2, 1}
swapEnds({1}) → {1}
**************************************************************************************************/
package javaExample.array1;

public class SwapEnds
{

    public static void main(String[] args)
    {
    	int kadtus [] ={1,2,3,4};
    	int pyasaPavan [];
    	pyasaPavan = swapEnds(kadtus);
    	for(int oneBottleDown : pyasaPavan){
    		System.out.println(oneBottleDown);
    	}
    }
    
    public static int[] swapEnds(int[] nums) {
        
    	int bharo [] = new int[nums.length];
    	
    	for(int i=0;i<nums.length;i++){
    		if(i==0){
    			bharo[i] = nums[nums.length-1];
    		}else if(i==nums.length-1){
    			bharo[i] = nums[0];
    		}else{
    			bharo[i] = nums[i];	
    		}
    		
    	}
    	return bharo;
    }


}
