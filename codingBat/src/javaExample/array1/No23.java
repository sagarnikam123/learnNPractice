/**************************************************************************************************

    no23 - solved
    
    Given an int array length 2, return true if it does not contain a 2 or 3. 
***************************************************************************************************
no23({4, 5}) → true
no23({4, 2}) → false
no23({3, 5}) → false
no23({1, 9}) → true
no23({2, 9}) → false
no23({1, 3}) → false
no23({1, 1}) → true
no23({2, 2}) → false
no23({3, 3}) → false
no23({7, 8}) → true
no23({8, 7}) → true
**************************************************************************************************/
package javaExample.array1;

public class No23
{

    public static void main(String[] args)
    {
    	int rajpakshe [] = {4,2};
    	System.out.println(no23(rajpakshe));
    }
    
    public static boolean no23(int[] nums) {
        if(nums[0]==2 || nums[0]==3 || nums[1]==2 || nums[1]==3){
        	return false;
        }
    	return true;
    }


}
