/**************************************************************************************************

    sumHeights - problem notUnderstood - copied - solved
    
    We have an array of heights, representing the altitude along a walking trail. Given start/end 
    indexes into the array, return the sum of the changes for a walk beginning at the start index 
    and ending at the end index. For example, with the heights {5, 3, 6, 7, 2} and start=2, end=4
    yields a sum of 1 + 5 = 6. The start end end index will
    both be valid indexes into the array with start <= end. 
***************************************************************************************************
sumHeights({5, 3, 6, 7, 2}, 2, 4) → 6
sumHeights({5, 3, 6, 7, 2}, 0, 1) → 2
sumHeights({5, 3, 6, 7, 2}, 0, 4) → 11
sumHeights({5, 3, 6, 7, 2}, 1, 1) → 0
sumHeights({1, 2, 3, 4, 5, 4, 3, 2, 10}, 0, 3) → 3
sumHeights({1, 2, 3, 4, 5, 4, 3, 2, 10}, 4, 8) → 11
sumHeights({1, 2, 3, 4, 5, 4, 3, 2, 10}, 7, 8) → 8
sumHeights({1, 2, 3, 4, 5, 4, 3, 2, 10}, 8, 8) → 0
sumHeights({1, 2, 3, 4, 5, 4, 3, 2, 10}, 2, 2) → 0
sumHeights({1, 2, 3, 4, 5, 4, 3, 2, 10}, 3, 6) → 3
sumHeights({10, 8, 7, 7, 7, 6, 7}, 1, 4) → 1
sumHeights({10, 8, 7, 7, 7, 6, 7}, 1, 5) → 2
**************************************************************************************************/
package javaExample.ap1;

public class SumHeights
{

    public static void main(String[] args)
    {
    	int longDistance [] = {5, 3, 6, 7, 2};
    	System.out.println(sumHeights(longDistance,2,4));
    }
    
    public static int sumHeights(int[] heights, int start, int end) {
    	if (start == end)
    	      return 0;

    	    int sum = 0;
    	    for (int i = start + 1; i <= end; i++)
    	      sum += Math.abs(heights[i] - heights[i - 1]);
    	    return sum;
    }

}
