/**************************************************************************************************

    sameEnds - solved
    
    Return true if the group of N numbers at the start and end of the array are the same. 
    For example, with {5, 6, 45, 99, 13, 5, 6}, the ends are the same for n=0 and n=2, and false 
    for n=1 and n=3. You may assume that n is in the range 0..nums.length inclusive. 
***************************************************************************************************
sameEnds({5, 6, 45, 99, 13, 5, 6}, 1) â†’ false
sameEnds({5, 6, 45, 99, 13, 5, 6}, 2) â†’ true
sameEnds({5, 6, 45, 99, 13, 5, 6}, 3) â†’ false
sameEnds({1, 2, 5, 2, 1}, 1) → true
sameEnds({1, 2, 5, 2, 1}, 2) → false
sameEnds({1, 2, 5, 2, 1}, 0) → true
sameEnds({1, 2, 5, 2, 1}, 5) → true
sameEnds({1, 1, 1}, 0) → true
sameEnds({1, 1, 1}, 1) → true
sameEnds({1, 1, 1}, 2) → true
sameEnds({1, 1, 1}, 3) → true
sameEnds({1}, 1) → true
sameEnds({}, 0) → true
sameEnds({4, 2, 4, 5}, 1) → false
**************************************************************************************************/
package javaExample.array2;

public class SameEnds
{

    public static void main(String[] args)
    {
    	int jogiya [] = {5, 6, 45, 99, 13, 5, 6};
    	System.out.println(sameEnds(jogiya,1));
    }
    
    public static boolean sameEnds(int[] nums, int len) {
    	
    	for(int i =0,j=nums.length-len;i < len;i++,j++){
    		if(nums[i]==nums[j]){
    			
    		}else{
    			return false;
    		}
    	}
        return true;
    }


}