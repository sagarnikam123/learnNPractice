/**************************************************************************************************

    post4 - solved

Given a non-empty array of ints, return a new array containing the elements from the original array
that come after the last 4 in the original array. The original array will contain at least one 4.
Note that it is valid in java to create an array of length 0. 
***************************************************************************************************
post4({2, 4, 1, 2}) â†’ {1, 2}
post4({4, 1, 4, 2}) â†’ {2}
post4({4, 4, 1, 2, 3}) â†’ {1, 2, 3}
post4({4, 2}) → {2}
post4({4, 4, 3}) → {3}
post4({4, 4}) → {}
post4({4}) → {}
post4({2, 4, 1, 4, 3, 2}) → {3, 2}
post4({4, 1, 4, 2, 2, 2}) → {2, 2, 2}
post4({3, 4, 3, 2}) → {3, 2}
**************************************************************************************************/
package javaExample.array2;

public class Post4
{

    public static void main(String[] args)
    {
    	int umeed [] = {4, 4, 1, 2, 3};
    	int hamdard [];
    	System.out.println(hamdard = post4(umeed));
    	
    	for(int saya: hamdard){
    		System.out.println(saya);
    	}
    }
    
    public static int[] post4(int[] nums) {
    	
    	int last4 = 0;
    	for(int i=0;i<nums.length;i++){
    		if(nums[i]==4) last4 = i; 
    	}
    	
    	int suhanaFakir [] = new int[nums.length-(last4+1)];
    	
    	for(int j=0,k=last4+1;j<suhanaFakir.length;j++,k++){
    		suhanaFakir[j] = nums[k];
    	}
    	
        return suhanaFakir;
    }


}