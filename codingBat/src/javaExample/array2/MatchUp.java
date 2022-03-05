/**************************************************************************************************

    matchUp - solved

    Given arrays nums1 and nums2 of the same length, for every element in nums1, consider the
    corresponding element in nums2 (at the same index). Return the count of the number of times
    that the two elements differ by 2 or less, but are not equal.
***************************************************************************************************
matchUp({1, 2, 3}, {2, 3, 10}) â†’ 2
matchUp({1, 2, 3}, {2, 3, 5}) â†’ 3
matchUp({1, 2, 3}, {2, 3, 3}) â†’ 2
matchUp({5, 3}, {5, 5}) → 1
matchUp({5, 3}, {4, 4}) → 2
matchUp({5, 3}, {3, 3}) → 1
matchUp({5, 3}, {2, 2}) → 1
matchUp({5, 3}, {1, 1}) → 1
matchUp({5, 3}, {0, 0}) → 0
matchUp({4}, {4}) → 0
matchUp({4}, {5}) → 1
**************************************************************************************************/
package javaExample.array2;

public class MatchUp
{

    public static void main(String[] args)
    {
    	int dhoka [] = {1, 2, 3};
    	int dhadi [] = {2, 3, 3};
    	System.out.println(matchUp(dhoka,dhadi));
    }

    public static int matchUp(int[] nums1, int[] nums2) {

    	int nithalla = 0;

    	for(int i =0;i<nums1.length;i++){
    		int diff = Math.abs( nums1[i]-nums2[i]);
    		if(diff <= 2 && diff != 0 ){
    			nithalla++;
    		}
    	}

    	return nithalla;
    }


}
