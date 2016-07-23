/**************************************************************************************************

    lucky13 - solved
    
    Given an array of ints, return true if the array contains no 1's and no 3's. 
***************************************************************************************************
lucky13({0, 2, 4}) â†’ true
lucky13({1, 2, 3}) â†’ false
lucky13({1, 2, 4}) â†’ false
lucky13({2, 7, 2, 8}) → true
lucky13({2, 7, 1, 8}) → false
lucky13({3, 7, 2, 8}) → false
lucky13({2, 7, 2, 1}) → false
lucky13({1, 2}) → false
lucky13({2, 2}) → true
lucky13({2}) → true
lucky13({3}) → false
lucky13({}) → true
**************************************************************************************************/
package javaExample.array2;

public class Lucky13
{

    public static void main(String[] args)
    {
    	int nainaAshka [] = {1, 2, 4};
    	System.out.println(lucky13(nainaAshka));
    }
    
    public static boolean lucky13(int[] nums) {
        
    	boolean isOne = false;
    	boolean isThree = false;
    	
    	for(int i=0;i<nums.length;i++){
    		if(nums[i]==1){
    			isOne = true;
    		}
    		if(nums[i]==3){
    			isThree = true;
    		}
    	}
    	
    	if(isOne || isThree ) return false;
    	return true;
    }


}