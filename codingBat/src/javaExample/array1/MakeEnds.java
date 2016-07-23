/**************************************************************************************************

    makeEnds - solved
    
    Given an array of ints, return a new array length 2 containing the first and last elements 
    from the original array. The original array will be length 1 or more. 
***************************************************************************************************
makeEnds({1, 2, 3}) → {1, 3}
makeEnds({1, 2, 3, 4}) → {1, 4}
makeEnds({7, 4, 6, 2}) → {7, 2}
makeEnds({1, 2, 2, 2, 2, 2, 2, 3}) → {1, 3}
makeEnds({7, 4}) → {7, 4}
makeEnds({7}) → {7, 7}
makeEnds({5, 2, 9}) → {5, 9}
makeEnds({2, 3, 4, 1}) → {2, 1}
**************************************************************************************************/
package javaExample.array1;

public class MakeEnds
{

    public static void main(String[] args)
    {
    	int pk [] = {1, 2, 3,4};
    	int soke [];
    	System.out.println(soke=makeEnds(pk));
    	for(int hatke : soke){
    		System.out.println(hatke);
    	}
    }
    
    public static int[] makeEnds(int[] nums) {
    	
    	int sathiya [] = new int[2];
    	if(nums.length ==1){
    		sathiya[0]=nums[0];
    		sathiya[1]=nums[0];
    		return sathiya;
    	}else if(nums.length==2){
    		return nums;
    	}
    	
    	sathiya[0] = nums[0];
    	sathiya[1] = nums[nums.length-1];
        return sathiya;
    }


}
