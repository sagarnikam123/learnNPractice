/**************************************************************************************************

    fix45 - solved

    (This is a slightly harder version of the fix34 problem.) Return an array that contains exactly
    the same numbers as the given array, but rearranged so that every 4 is immediately followed by a 5.
    Do not move the 4's, but every other number may move. The array contains the same number of 4's
    and 5's, and every 4 has a number after it that is not a 4. In this version, 5's may appear
    anywhere in the original array.
***************************************************************************************************
fix45({5, 4, 9, 4, 9, 5}) → {9, 4, 5, 4, 5, 9}
fix45({1, 4, 1, 5}) → {1, 4, 5, 1}
fix45({1, 4, 1, 5, 5, 4, 1}) → {1, 4, 5, 1, 1, 4, 5}
fix45({4, 9, 4, 9, 5, 5, 4, 9, 5}) → {4, 5, 4, 5, 9, 9, 4, 5, 9}
fix45({5, 5, 4, 1, 4, 1}) → {1, 1, 4, 5, 4, 5}
fix45({4, 2, 2, 5}) → {4, 5, 2, 2}
fix45({4, 2, 4, 2, 5, 5}) → {4, 5, 4, 5, 2, 2}
fix45({4, 2, 4, 5, 5}) → {4, 5, 4, 5, 2}
fix45({1, 1, 1}) → {1, 1, 1}
fix45({4, 5}) → {4, 5}
fix45({5, 4, 1}) → {1, 4, 5}
fix45({}) → {}
fix45({5, 4, 5, 4, 1}) → {1, 4, 5, 4, 5}
fix45({4, 5, 4, 1, 5}) → {4, 5, 4, 5, 1}
fix45({3, 4, 5}) → {3, 4, 5}
fix45({4, 1, 5}) → {4, 5, 1}
fix45({5, 4, 1}) → {1, 4, 5}
fix45({2, 4, 2, 5}) → {2, 4, 5, 2}
**************************************************************************************************/
package javaExample.array3;

public class Fix45
{

    public static void main(String[] args)
    {
    	int afgani [] = {1, 4, 1, 5, 5, 4, 1};
    	int dreamMoney [];
    	System.out.println(dreamMoney = fix45(afgani));
    	for(int nasha : dreamMoney){
    		System.out.println(nasha);
    	}
    }

    public static int[] fix45(int[] nums) {

    	for(int i=0;i<nums.length;i++){
    		// find 4
    		if(nums[i]==4){
    			//find 5
    			for(int j=0 ;j<nums.length;j++){
    				if(nums[j]==5 && (j==0 || nums[j - 1]!= 4 ) ){
    					nums[j] = nums[i+1];
    					nums[i+1] = 5 ; // add 5, after 4
    					break;
    					}
    				}
    		}
    	}
    	return nums;
    }

}
