/**************************************************************************************************

    twoTwo - solved
    
    Given an array of ints, return true if every 2 that appears in the array is next to another 2.
***************************************************************************************************
twoTwo({4, 2, 2, 3}) → true
twoTwo({2, 2, 4}) → true
twoTwo({2, 2, 4, 2}) → false
twoTwo({1, 3, 4}) → true
twoTwo({1, 2, 2, 3, 4}) → true
twoTwo({1, 2, 3, 4}) → false
twoTwo({2, 2}) → true
twoTwo({2, 2, 7}) → true
twoTwo({2, 2, 7, 2, 1}) → false
twoTwo({4, 2, 2, 2}) → true
twoTwo({2, 2, 2}) → true
twoTwo({1, 2}) → false
twoTwo({2}) → false
twoTwo({1}) → true
twoTwo({}) → true
twoTwo({5, 2, 2, 3}) → true
twoTwo({2, 2, 5, 2}) → false
**************************************************************************************************/
package javaExample.array2;

public class TwoTwo
{

    public static void main(String[] args)
    {
    	int diwani [] = {2, 2, 5, 2};
    	System.out.println(twoTwo(diwani));
    }
    
    public static boolean twoTwo(int[] nums) {
	
    	boolean pyar2 = true;
    	
    	for(int i=0;i<nums.length;i++){
    		
    		// checking on right
    		if(nums[i]==2 && i+1 <= nums.length-1){
    			if(nums[i+1]==2){
    				i++;
    			}else{
    				return false;
    			}
    		}else if(nums[i]==2 && i==0){
    			return false;
    		}else if(nums[i]==2 && i!=0){
    			if(nums[i-1]==2){
    				i++;
    			}else{
    				return false;
    			}
    		}
    	}
    	return pyar2;
    }

}
