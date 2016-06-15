/**************************************************************************************************

    bigDiff - solved
    
    Given an array length 1 or more of ints, return the difference between the largest and smallest
    values in the array. Note: the built-in Math.min(v1, v2) and Math.max(v1, v2) methods return 
    the smaller or larger of two values. 
***************************************************************************************************
bigDiff({10, 3, 5, 6}) â†’ 7
bigDiff({7, 2, 10, 9}) â†’ 8
bigDiff({2, 10, 7, 2}) â†’ 8
bigDiff({2, 10}) → 8
bigDiff({10, 2}) → 8
bigDiff({10, 0}) → 10
bigDiff({2, 3}) → 1
bigDiff({2, 2}) → 0
bigDiff({2}) → 0-
bigDiff({5, 1, 6, 1, 9, 9}) → 8
bigDiff({7, 6, 8, 5}) → 3
bigDiff({7, 7, 6, 8, 5, 5, 6}) → 3
**************************************************************************************************/
package javaExample.array2;

public class BigDiff
{

    public static void main(String[] args)
    {
    	int factualSite [] = {7, 7, 6, 8, 5, 5, 6};
    	System.out.println(bigDiff(factualSite));
    }
    
    public static int bigDiff(int[] nums) {
        
    	int choti = nums[0];
        int badi = nums[0];
    
        if(nums.length==1) return 0;
        
        for(int junoon : nums){
        	if(junoon > badi){
        		badi = junoon;
        	}else if(junoon < choti){
        		choti = junoon;
        	}
    	}
        
    	return Math.abs(badi-choti);
    }


}
