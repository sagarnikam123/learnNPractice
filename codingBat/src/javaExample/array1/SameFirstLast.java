/**************************************************************************************************

    sameFirstLast - solved

    Given an array of ints, return true if the array is length 1 or more, and the first element
    and the last element are equal.
***************************************************************************************************
sameFirstLast({1, 2, 3}) → false
sameFirstLast({1, 2, 3, 1}) → true
sameFirstLast({1, 2, 1}) → true
sameFirstLast({7}) → true
sameFirstLast({}) → false
sameFirstLast({1, 2, 3, 4, 5, 1}) → true
sameFirstLast({1, 2, 3, 4, 5, 13}) → false
sameFirstLast({13, 2, 3, 4, 5, 13}) → true
sameFirstLast({7, 7}) → true
**************************************************************************************************/
package javaExample.array1;

public class SameFirstLast
{

    public static void main(String[] args)
    {
    	int dhyan [] = {1,2,3,1};
    	System.out.println(sameFirstLast(dhyan));
    }

    public static boolean sameFirstLast(int nums[]){

    	if(nums.length==0){
    		return false;
    	}
    	if(nums[0]==nums[nums.length-1]){
    		return true;
    	}
    	return false;
    }

}
