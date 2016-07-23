/**************************************************************************************************

    either24 - solved
    
    Given an array of ints, return true if the array contains a 2 next to a 2 or a 4 next to a 4,
    but not both.
***************************************************************************************************
either24({1, 2, 2}) â†’ true
either24({4, 4, 1}) â†’ true
either24({4, 4, 1, 2, 2}) â†’ false
either24({1, 2, 3, 4}) → false
either24({3, 5, 9}) → false
either24({1, 2, 3, 4, 4}) → true
either24({2, 2, 3, 4}) → true
either24({1, 2, 3, 2, 2, 4}) → true
either24({1, 2, 3, 2, 2, 4, 4}) → false
either24({1, 2}) → false
either24({2, 2}) → true
either24({4, 4}) → true-
either24({2}) → false
either24({}) → false-
**************************************************************************************************/
package javaExample.array2;

public class Either24
{

    public static void main(String[] args)
    {
    	int hiMedia [] = {1,2,2};
    	System.out.println(either24(hiMedia));
    }
    
    public static boolean either24(int[] nums) {
        boolean either2 = false;
        boolean either4 = false;
    	
        for(int i=0;i<nums.length-1;i++){
        	if(nums[i]==2 && nums[i+1]==2) either2= true;
        	if(nums[i]==4 && nums[i+1]==4) either4= true;
        }
        
        if(either2 ==true && either4 == true){
        	return false;
        }else if(either2 ==true || either4==true){
        	return true;
        }
    	return false;
    }

}