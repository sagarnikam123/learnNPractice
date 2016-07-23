/**************************************************************************************************

    midThree - solved
    
    Given an array of ints of odd length, return a new array length 3 containing the elements 
    from the middle of the array. The array length will be at least 3. 
***************************************************************************************************
midThree({1, 2, 3, 4, 5}) → {2, 3, 4}
midThree({8, 6, 7, 5, 3, 0, 9}) → {7, 5, 3}
midThree({1, 2, 3}) → {1, 2, 3}
**************************************************************************************************/
package javaExample.array1;

public class MidThree
{

    public static void main(String[] args)
    {
    	int givenPart [] = {1, 2, 3, 4, 5};
    	int bekasur [];
    	bekasur = midThree(givenPart);
    	for(int dharmaGuru : bekasur){
    		System.out.println(dharmaGuru);
    	}
    	
    }
    
    public static int[] midThree(int[] nums) {
        
    	int middle = nums.length/2;
    			
    	int rajdhani [] = new int[3];
    	rajdhani[0] = nums[middle-1];
    	rajdhani[1] = nums[middle];
    	rajdhani[2] = nums[middle+1];
    	return rajdhani;
    }


}
