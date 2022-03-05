/**************************************************************************************************

    has77 - solved

    Given an array of ints, return true if the array contains two 7's next to each other,
    or there are two 7's separated by one element, such as with {7, 1, 7}.
***************************************************************************************************
has77({1, 7, 7}) â†’ true
has77({1, 7, 1, 7}) â†’ true
has77({1, 7, 1, 1, 7}) â†’ false
has77({7, 7, 1, 1, 7}) → true
has77({2, 7, 2, 2, 7, 2}) → false
has77({2, 7, 2, 2, 7, 7}) → true
has77({7, 2, 7, 2, 2, 7}) → true
has77({7, 2, 6, 2, 2, 7}) → false
has77({7, 7, 7}) → true
has77({7, 1, 7}) → true
has77({7, 1, 1}) → false
has77({1, 2}) → false
has77({1, 7}) → false
has77({7}) → false
**************************************************************************************************/
package javaExample.array2;

public class Has77
{

    public static void main(String[] args)
    {
    	int patRani [] = {1, 7,1,1, 7};
    	System.out.println(has77(patRani));
    }

    public static boolean has77(int[] nums) {

    	for(int i=0;i<nums.length-1;i++){

    		if(nums[i]==7){
    			if(nums[i+1]==7){
    				return true;
    			}
    			if(i+2 <nums.length){
    				if(nums[i+2]==7) return true;
    			}
    		}
    	}
        return false;
    }


}
