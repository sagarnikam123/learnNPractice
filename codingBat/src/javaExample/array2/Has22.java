/**************************************************************************************************

    has22 - solved
    
    Given an array of ints, return true if the array contains a 2 next to a 2 somewhere. 
***************************************************************************************************
has22({1, 2, 2}) â†’ true
has22({1, 2, 1, 2}) â†’ false
has22({2, 1, 2}) â†’ false
has22({2, 2, 1, 2}) → true
has22({1, 3, 2}) → false
has22({1, 3, 2, 2}) → true
has22({2, 3, 2, 2}) → true
has22({4, 2, 4, 2, 2, 5}) → true
has22({1, 2}) → false
has22({2, 2}) → true
has22({2}) → false
has22({}) → false
has22({3, 3, 2, 2}) → true
has22({5, 2, 5, 2}) → false
**************************************************************************************************/
package javaExample.array2;

public class Has22
{

    public static void main(String[] args)
    {
    	int papi [] =  {2, 1, 2};
    	System.out.println(has22(papi));
    }
    
    public static boolean has22(int[] nums) {
    	
    	for(int i=0;i<nums.length-1;i++){
    		if(nums[i]==2 && nums[i+1]==2){
    			return true;
    		}
    	}
        return false;
    }


}