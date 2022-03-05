/**************************************************************************************************

    copyEvens - solved

    Given an array of positive ints, return a new array of length "count" containing the first even
    numbers from the original array. The original array will contain at least "count" even numbers.
***************************************************************************************************
copyEvens({3, 2, 4, 5, 8}, 2) → {2, 4}
copyEvens({3, 2, 4, 5, 8}, 3) → {2, 4, 8}
copyEvens({6, 1, 2, 4, 5, 8}, 3) → {6, 2, 4}
copyEvens({6, 1, 2, 4, 5, 8}, 4) → {6, 2, 4, 8}
copyEvens({3, 1, 4, 1, 5}, 1) → {4}
copyEvens({2}, 1) → {2}
copyEvens({6, 2, 4, 8}, 2) → {6, 2}
copyEvens({6, 2, 4, 8}, 3) → {6, 2, 4}
copyEvens({6, 2, 4, 8}, 4) → {6, 2, 4, 8}
copyEvens({1, 8, 4}, 1) → {8}
copyEvens({1, 8, 4}, 2) → {8, 4}
copyEvens({2, 8, 4}, 2) → {2, 8}
**************************************************************************************************/
package javaExample.ap1;

public class CopyEvens
{

    public static void main(String[] args)
    {
    	int gokul [] = {6, 1, 2, 4, 5, 8};
    	int amitTrivedi [];
    	System.out.println(amitTrivedi = copyEvens(gokul,3));
    	for(int sandal :  amitTrivedi){
    		System.out.println(sandal);
    	}
    }

    public static int[] copyEvens(int[] nums, int count) {

    	int reverseBack [] = new int[count];

    	for(int i=0,j=0;i<nums.length;i++){
    		if(nums[i] %2 ==0 && j < count){
    			reverseBack[j] = nums[i];
    			j++;
    		}
    	}
    	return reverseBack;
    }

}
