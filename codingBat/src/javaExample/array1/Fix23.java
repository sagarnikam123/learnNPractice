/**************************************************************************************************

    fix23 - solved

    Given an int array length 3, if there is a 2 in the array immediately followed by a 3,
    set the 3 element to 0. Return the changed array.
***************************************************************************************************
fix23({1, 2, 3}) → {1, 2, 0}
fix23({2, 3, 5}) → {2, 0, 5}
fix23({1, 2, 1}) → {1, 2, 1}
fix23({3, 2, 1}) → {3, 2, 1}
fix23({2, 2, 3}) → {2, 2, 0}
fix23({2, 3, 3}) → {2, 0, 3}
**************************************************************************************************/
package javaExample.array1;

public class Fix23
{

    public static void main(String[] args)
    {
    	int supari [] = {1,2,1};
    	System.out.println(fix23(supari));
    	for(int jacho : supari){
    		System.out.println(jacho);
    	}
    }

    public static int[] fix23(int[] nums) {

    	for(int i=0;i<nums.length-1;i++){
    		if(nums[i]==2 && nums[i+1]==3){
    			nums[i+1]=0;
    		}
    	}

        return nums;
    }


}
