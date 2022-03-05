/**************************************************************************************************

    shiftLeft - solved

    Return an array that is "left shifted" by one -- so {6, 2, 5, 3} returns {2, 5, 3, 6}.
    You may modify and return the given array, or return a new array.
***************************************************************************************************
shiftLeft({6, 2, 5, 3}) â†’ {2, 5, 3, 6}
shiftLeft({1, 2}) â†’ {2, 1}
shiftLeft({1}) â†’ {1}
shiftLeft({}) → {}
shiftLeft({1, 1, 2, 2, 4}) → {1, 2, 2, 4, 1}
shiftLeft({1, 1, 1}) → {1, 1, 1}
shiftLeft({1, 2, 3}) → {2, 3, 1}
**************************************************************************************************/
package javaExample.array2;

public class ShiftLeft
{

    public static void main(String[] args)
    {
    	int peopleTogether [] = {1};
    	int mannat [];
    	System.out.println(mannat = shiftLeft(peopleTogether));
    	for(int whiteRed : mannat){
    		System.out.println(whiteRed);
    	}
    }

    public static int[] shiftLeft(int[] nums) {

    	int pk [] = new int[nums.length];
    	if(nums.length==0) return new int[0];
    	pk[nums.length-1] = nums[0];

    	for(int i=0;i<nums.length-1;i++){
    		pk[i] = nums[i+1];
    	}
        return pk;
    }


}
