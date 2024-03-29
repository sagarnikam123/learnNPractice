/**************************************************************************************************

    pre4 - solved

Given a non-empty array of ints, return a new array containing the elements from the original array
that come before the first 4 in the original array. The original array will contain at least one 4.
Note that it is valid in java to create an array of length 0.
***************************************************************************************************
pre4({1, 2, 4, 1}) â†’ {1, 2}
pre4({3, 1, 4}) â†’ {3, 1}
pre4({1, 4, 4}) â†’ {1}
pre4({1, 4, 4, 2}) → {1}
pre4({1, 3, 4, 2, 4}) → {1, 3}
pre4({4, 4}) → {}
pre4({3, 3, 4}) → {3, 3}
pre4({1, 2, 1, 4}) → {1, 2, 1}
pre4({2, 1, 4, 2}) → {2, 1}
pre4({2, 1, 2, 1, 4, 2}) → {2, 1, 2, 1}
**************************************************************************************************/
package javaExample.array2;

public class Pre4
{

    public static void main(String[] args)
    {
    	int loveMe [] = {1, 4, 4};
    	int kidnap [];
    	System.out.println(kidnap = pre4(loveMe));
    	for(int shayarana : kidnap){
    		System.out.println(shayarana);
    	}
    }

    public static int[] pre4(int[] nums) {

    	int kutheChar = 0;

    	for(int i=0;i<nums.length;i++){
    		if(nums[i]==4){
    			kutheChar = i;
    			i=nums.length;
    		}
    	}

    	int vafa [] = new int[kutheChar];

    	for(int j=0 ;j < vafa.length; j++){
    		vafa[j] = nums[j];
    	}
        return vafa;
    }


}
