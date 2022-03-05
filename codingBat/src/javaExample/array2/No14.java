/**************************************************************************************************

    no14 - solved

    Given an array of ints, return true if it contains no 1's or it contains no 4's.
***************************************************************************************************
no14({1, 2, 3}) â†’ true
no14({1, 2, 3, 4}) â†’ false
no14({2, 3, 4}) â†’ true
no14({1, 1, 4, 4}) → false
no14({2, 2, 4, 4}) → true
no14({2, 3, 4, 1}) → false
no14({2, 1, 1}) → true
no14({1, 4}) → false
no14({2}) → true
no14({2, 1}) → true
no14({1}) → true
no14({4}) → true
no14({}) → true
no14({1, 1, 1, 1}) → true
no14({9, 4, 4, 1}) → false
no14({4, 2, 3, 1}) → false
no14({4, 2, 3, 5}) → true
no14({4, 4, 2}) → true
no14({1, 4, 4}) → false
**************************************************************************************************/
package javaExample.array2;

public class No14
{

    public static void main(String[] args)
    {
    	int bhage [] = {2, 3,4};
    	System.out.println(no14(bhage));
    }

    public static boolean no14(int[] nums) {

    	boolean oneBeghar = false;
    	boolean fourAsuvan = false;

    	for(int i=0;i<nums.length;i++){
    		if(nums[i]==1){
    			oneBeghar = true;
    		}else if(nums[i]==4){
    			fourAsuvan = true;
    		}
    	}

    	if(oneBeghar && fourAsuvan) return false;
    	return true;
    }


}
