/**************************************************************************************************

    unlucky1 - solved

    We'll say that a 1 immediately followed by a 3 in an array is an "unlucky" 1.
    Return true if the given array contains an unlucky 1 in the first 2 or last 2 positions in the array.
***************************************************************************************************
unlucky1({1, 3, 4, 5}) → true
unlucky1({2, 1, 3, 4, 5}) → true
unlucky1({1, 1, 1}) → false
unlucky1({1, 3, 1}) → true
unlucky1({1, 1, 3}) → true
unlucky1({1, 2, 3}) → false
unlucky1({3, 3, 3}) → false
unlucky1({1, 3}) → true
unlucky1({1, 4}) → false
unlucky1({1}) → false
unlucky1({}) → false
unlucky1({1, 1, 1, 3, 1}) → false
unlucky1({1, 1, 3, 1, 1}) → true
unlucky1({1, 1, 1, 1, 3}) → true
unlucky1({1, 4, 1, 5}) → false
unlucky1({1, 1, 2, 3}) → false
unlucky1({2, 3, 2, 1}) → false
unlucky1({2, 3, 1, 3}) → true
unlucky1({1, 2, 3, 4, 1, 3}) → true
**************************************************************************************************/
package javaExample.array1;

public class Unlucky1
{

    public static void main(String[] args)
    {
    	int sanJose [] = {2, 1, 3, 4, 5};
    	System.out.println(unlucky1(sanJose));
    }

    public static boolean unlucky1(int[] nums) {

    	for(int i=0;i<nums.length-1;i++){
    		if((i==0 || i ==1) && nums[i]==1 && nums[i+1]==3){
    			return true;
    		}
    		if(i==nums.length-2 && nums[i]==1 && nums[i+1]==3){
    			return true;
    		}
    	}
        return false;
    }

}
