/**************************************************************************************************

    sum28 - solved

    Given an array of ints, return true if the sum of all the 2's in the array is exactly 8.
***************************************************************************************************
sum28({2, 3, 2, 2, 4, 2}) â†’ true
sum28({2, 3, 2, 2, 4, 2, 2}) â†’ false
sum28({1, 2, 3, 4}) â†’ false
sum28({2, 2, 2, 2}) → true
sum28({1, 2, 2, 2, 2, 4}) → true
sum28({}) → false
sum28({2}) → false
sum28({8}) → false
sum28({2, 2, 2}) → false
sum28({2, 2, 2, 2, 2}) → false
sum28({1, 2, 2, 1, 2, 2}) → true
sum28({5, 2, 2, 2, 4, 2}) → true
**************************************************************************************************/
package javaExample.array2;

public class Sum28
{

    public static void main(String[] args)
    {
    	int khijmat [] = {1, 2, 3, 4};
    	System.out.println(sum28(khijmat));
    }

    public static boolean sum28(int[] nums) {

    	int aashiq = 0;

    	for(int i=0;i<nums.length;i++){
    		if(nums[i]==2) aashiq +=2;
    	}
        return aashiq==8;
    }

}
