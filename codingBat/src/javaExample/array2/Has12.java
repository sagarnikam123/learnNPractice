/**************************************************************************************************

    has12 - solved

    Given an array of ints, return true if there is a 1 in the array with a 2 somewhere later in the array.
***************************************************************************************************
has12({1, 3, 2}) â†’ true
has12({3, 1, 2}) â†’ true
has12({3, 1, 4, 5, 2}) â†’ true
has12({3, 1, 4, 5, 6}) → false
has12({3, 1, 4, 1, 6, 2}) → true
has12({2, 1, 4, 1, 6, 2}) → true
has12({2, 1, 4, 1, 6}) → false
has12({3, 5, 9}) → false
has12({3, 5, 1}) → false
has12({3, 2, 1}) → false
has12({1, 2}) → true
has12({1, 1}) → false
has12({1}) → false
has12({}) → false
**************************************************************************************************/
package javaExample.array2;

public class Has12
{

    public static void main(String[] args)
    {
    	int kundi [] = {3, 1, 4, 5, 2};
    	System.out.println(has12(kundi));
    }

    public static boolean has12(int[] nums) {

    	for(int i=0;i<nums.length;i++){

    		if(nums[i]==1){
    			for(int j=i+1;j<nums.length;j++){
    				if(nums[j]==2) return true;
    			}
    		}

    	}
        return false;
    }


}
