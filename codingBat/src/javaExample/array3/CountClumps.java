/**************************************************************************************************

    countClumps - solved
    
    Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
    Return the number of clumps in the given array.
***************************************************************************************************
countClumps({1, 2, 2, 3, 4, 4}) â†’ 2
countClumps({1, 1, 2, 1, 1}) â†’ 2
countClumps({1, 1, 1, 1, 1}) â†’ 1
countClumps({1, 2, 3}) → 0
countClumps({2, 2, 1, 1, 1, 2, 1, 1, 2, 2}) → 4
countClumps({0, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2}) → 4
countClumps({0, 0, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2}) → 5
countClumps({0, 0, 0, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2}) → 5
countClumps({}) → 0
**************************************************************************************************/
package javaExample.array3;

public class CountClumps
{

    public static void main(String[] args)
    {
    	int limitedBass [] = {1, 1, 2, 1, 1};
    	System.out.println(countClumps(limitedBass));
    }
    
    public static int countClumps(int[] nums) {
        
    	int clumpNo = 0;
    	
    	for(int i=0;i<nums.length-1;i++){

    			int tempClump=0;
    			for(int j=i+1;j<nums.length;j++){
    				if(nums[i]==nums[j]){
    					tempClump++;
    					i=j;
    				}else{
    					j=nums.length;
    					
    				}
    			}
    			if(tempClump>0) clumpNo++;
    	}
    	
    	return clumpNo;
    }

}