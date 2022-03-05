/**************************************************************************************************

    modThree - solved

    Given an array of ints, return true if the array contains either 3 even
    or 3 odd values all next to each other.
***************************************************************************************************
modThree({2, 1, 3, 5}) â†’ true
modThree({2, 1, 2, 5}) â†’ false
modThree({2, 4, 2, 5}) â†’ true
modThree({1, 2, 1, 2, 1}) → false
modThree({9, 9, 9}) → true
modThree({1, 2, 1}) → false
modThree({1, 2}) → false
modThree({1}) → false
modThree({}) → false
modThree({9, 7, 2, 9}) → false
modThree({9, 7, 2, 9, 2, 2}) → false
modThree({9, 7, 2, 9, 2, 2, 6}) → true
**************************************************************************************************/
package javaExample.array2;

public class ModThree
{

    public static void main(String[] args)
    {
    	int sol [] = {2, 4, 2, 5};
    	System.out.println(modThree(sol));
    }

    public static boolean modThree(int[] nums) {

    	for(int i=0;i<nums.length-2;i++){

    		//even
    		if(nums[i]%2 ==0 && nums[i+1]%2 ==0 && nums[i+2]%2 ==0){
    			return true;
    		}else if(nums[i]%2 !=0 && nums[i+1]%2 !=0 && nums[i+2]%2 !=0){
    			return true;
    		}
    	}
        return false;
    }


}
