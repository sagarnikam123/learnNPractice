/**************************************************************************************************

    frontPiece - solved

    Given an int array of any length, return a new array of its first 2 elements.
    If the array is smaller than length 2, use whatever elements are present.
***************************************************************************************************
frontPiece({1, 2, 3}) → {1, 2}
frontPiece({1, 2}) → {1, 2}
frontPiece({1}) → {1}
frontPiece({}) → {}
frontPiece({6, 5, 0}) → {6, 5}
frontPiece({6, 5}) → {6, 5}
frontPiece({3, 1, 4, 1, 5}) → {3, 1}
frontPiece({6}) → {6}
**************************************************************************************************/
package javaExample.array1;

public class FrontPiece
{

    public static void main(String[] args)
    {
    	int a [] = {1};
    	int jebya [] = null;
    	System.out.println(jebya =frontPiece(a));
    	for(int jacho : jebya){
    		System.out.println(jacho);
    	}
    }

    public static int[] frontPiece(int[] nums) {

    	if(nums.length < 2){
    		return nums;
    	}
    	int kums [] = {nums[0],nums[1]};
        return  kums;
    }


}
