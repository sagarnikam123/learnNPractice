/**************************************************************************************************

    more14 - solved

    Given an array of ints, return true if the number of 1's is greater than the number of 4's
***************************************************************************************************
more14({1, 4, 1}) â†’ true
more14({1, 4, 1, 4}) â†’ false
more14({1, 1}) â†’ true
more14({1, 6, 6}) → true
more14({1}) → true
more14({1, 4}) → false
more14({6, 1, 1}) → true
more14({1, 6, 4}) → false
more14({1, 1, 4, 4, 1}) → true
more14({1, 1, 6, 4, 4, 1}) → true
more14({}) → false
more14({4, 1, 4, 6}) → false
more14({4, 1, 4, 6, 1}) → false
more14({1, 4, 1, 4, 1, 6}) → true
**************************************************************************************************/
package javaExample.array2;

public class More14
{

    public static void main(String[] args)
    {
    	int dilliWaliGirlFriend [] = {1, 1};
    	System.out.println(more14(dilliWaliGirlFriend));
    }

    public static boolean more14(int[] nums) {

    	int oneMajnu = 0;
    	int fourPoint = 0;

    	for(int i=0;i<nums.length;i++){
    		if(nums[i]==1){
    			oneMajnu++;
    		}else if(nums[i]==4){
    			fourPoint++;
    		}
    	}
    	if(oneMajnu > fourPoint) return true;

    	return false;
    }


}
