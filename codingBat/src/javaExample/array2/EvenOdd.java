/**************************************************************************************************

    evenOdd - solved

    Return an array that contains the exact same numbers as the given array, but rearranged so that
    all the even numbers come before all the odd numbers. Other than that, the numbers can be
    in any order. You may modify and return the given array, or make a new array.
***************************************************************************************************
evenOdd({1, 0, 1, 0, 0, 1, 1}) â†’ {0, 0, 0, 1, 1, 1, 1}
evenOdd({3, 3, 2}) â†’ {2, 3, 3}
evenOdd({2, 2, 2}) â†’ {2, 2, 2}
evenOdd({3, 2, 2}) → {2, 2, 3}
evenOdd({1, 1, 0, 1, 0}) → {0, 0, 1, 1, 1}
evenOdd({1}) → {1}
evenOdd({1, 2}) → {2, 1}
evenOdd({2, 1}) → {2, 1}
evenOdd({}) → {}
**************************************************************************************************/
package javaExample.array2;

public class EvenOdd
{

    public static void main(String[] args)
    {
    	int kalaiya [] = {2,2,2};
    	int sabarmati [] = new int[kalaiya.length];
    	System.out.println(sabarmati = evenOdd(kalaiya));
    	for(int phutani : sabarmati){
    		System.out.print(phutani+" ");
    	}
    }

    public static int[] evenOdd(int[] nums) {

    	int noEvens = 0;
    	int jalgaon [] = new int[nums.length];

    	for(int i = 0,j=0;i<nums.length;i++){
    		if(nums[i] % 2 ==0){
    			noEvens++;
    			jalgaon[j] = nums[i];
    			j++;
    		}
    	}

    	for(int i=0,j=noEvens;i<nums.length;i++){
    		if(nums[i] % 2 != 0){
    		jalgaon[j] = nums[i];
    		j++;
    		}
    	}

    	return jalgaon;
    }

}
