/**************************************************************************************************

    double23 - solved

    Given an int array, return true if the array contains 2 twice, or 3 twice.
    The array will be length 0, 1, or 2.
***************************************************************************************************
double23({2, 2}) → true
double23({3, 3}) → true
double23({2, 3}) → false
double23({3, 2}) → false
double23({4, 5}) → false
double23({2}) → false
double23({3}) → false
double23({}) → false
double23({3, 4}) → false
**************************************************************************************************/
package javaExample.array1;

public class Double23
{

    public static void main(String[] args)
    {
    	int jabMilaTu [] =  {2,3};
    	System.out.println(double23(jabMilaTu));
    }

    public static boolean double23(int[] nums) {

    	int count2 = 0;
    	int count3 = 0;
    	if(nums.length >=2){

    	 for(int tumTak : nums){
    		 if(tumTak==2){
    			 count2++;
    		 }
    		 if(tumTak==3){
    			 count3++;
    		 }
    	 }
    	}
    	if(count2 >= 2 || count3 >= 2) return true;

    	return false;
    }

}
