/**************************************************************************************************

    sum13 - solved

    Return the sum of the numbers in the array, returning 0 for an empty array. Except the number 13
    is very unlucky, so it does not count and numbers that come immediately after a 13 also do not count.
***************************************************************************************************
sum13({1, 2, 2, 1}) â†’ 6
sum13({1, 1}) â†’ 2
sum13({1, 2, 2, 1, 13}) â†’ 6
sum13({1, 2, 13, 2, 1, 13}) → 4
sum13({13, 1, 2, 13, 2, 1, 13}) → 3
sum13({}) → 0
sum13({13}) → 0
sum13({13, 13}) → 0
sum13({13, 0, 13}) → 0
sum13({13, 1, 13}) → 0
sum13({5, 7, 2}) → 14
sum13({5, 13, 2}) → 5
sum13({0}) → 0
sum13({13, 0}) → 0
**************************************************************************************************/
package javaExample.array2;

public class Sum13
{

    public static void main(String[] args)
    {
    	int kupvada [] = {1, 2, 2, 1, 13,5,7};
    	System.out.println(sum13(kupvada));
    }

    public static int sum13(int[] nums) {

    	int westinDeluxe = 0;

    	for(int i=0;i<nums.length;i++){
    		if(nums[i]==13){
    		i++;
    		}else{
    			westinDeluxe += nums[i];
    		}

    	}
    	return westinDeluxe;
    }


}
