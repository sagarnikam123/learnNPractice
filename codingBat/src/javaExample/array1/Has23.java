/**************************************************************************************************

    has23 - solved

    Given an int array length 2, return true if it contains a 2 or a 3.
***************************************************************************************************
has23({2, 5}) → true
has23({4, 3}) → true
has23({4, 5}) → false
has23({2, 2}) → true
has23({3, 2}) → true
has23({3, 3}) → true
has23({7, 7}) → false
has23({3, 9}) → true
has23({9, 5}) → false
**************************************************************************************************/
package javaExample.array1;

public class Has23
{

    public static void main(String[] args)
    {
    	int q [] = {4, 5};
    	System.out.println(has23(q));
    }

    public static boolean has23(int[] nums) {
        if(nums[0]==2 || nums[1]==3 || nums[0]==3 || nums[1]==2) return true;
        return false;
    }


}
