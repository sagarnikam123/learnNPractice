/**************************************************************************************************

    groupSum 
    
    Given an array of ints, is it possible to choose a group of some of the ints, such that the 
    group sums to the given target? This is a classic backtracking recursion problem. Once you 
    understand the recursive backtracking strategy in this problem, you can use the same pattern 
    for many problems to search a space of choices. Rather than looking at the whole array, our 
    convention is to consider the part of the array starting at index start and continuing to the 
    end of the array. The caller can specify the whole array simply by passing start as 0. No loops 
    are needed -- the recursive calls progress down the array.
***************************************************************************************************
groupSum(0, {2, 4, 8}, 10) → true
groupSum(0, {2, 4, 8}, 14) → true
groupSum(0, {2, 4, 8}, 9) → false
**************************************************************************************************/
package javaExample.recursion2;

public class GroupSum
{

    public static void main(String[] args)
    {

    }
    
    public static boolean groupSum(int start, int[] nums, int target) {
        return false;
    }


}
