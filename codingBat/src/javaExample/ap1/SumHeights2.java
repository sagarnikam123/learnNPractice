/**************************************************************************************************

    sumHeights2 - solved
    
    (A variation on the sumHeights problem.) We have an array of heights, representing the altitude 
    along a walking trail. Given start/end indexes into the array, return the sum of the changes for
    a walk beginning at the start index and ending at the end index, however increases in height
    count double. For example, with the heights {5, 3, 6, 7, 2} and start=2, end=4 yields a sum of
    1*2 + 5 = 7. The start end end index will both be valid indexes into the array with start <= end. 
***************************************************************************************************
sumHeights2({5, 3, 6, 7, 2}, 2, 4) → 7
sumHeights2({5, 3, 6, 7, 2}, 0, 1) → 2
sumHeights2({5, 3, 6, 7, 2}, 0, 4) → 15
sumHeights2({5, 3, 6, 7, 2}, 1, 1) → 0
sumHeights2({1, 2, 3, 4, 5, 4, 3, 2, 10}, 0, 3) → 6
sumHeights2({1, 2, 3, 4, 5, 4, 3, 2, 10}, 4, 8) → 19
sumHeights2({1, 2, 3, 4, 5, 4, 3, 2, 10}, 7, 8) → 16
sumHeights2({1, 2, 3, 4, 5, 4, 3, 2, 10}, 8, 8) → 0
sumHeights2({1, 2, 3, 4, 5, 4, 3, 2, 10}, 2, 2) → 0
sumHeights2({1, 2, 3, 4, 5, 4, 3, 2, 10}, 3, 6) → 4
sumHeights2({10, 8, 7, 7, 7, 6, 7}, 1, 4) → 1
sumHeights2({10, 8, 7, 7, 7, 6, 7}, 1, 5) → 2
**************************************************************************************************/
package javaExample.ap1;

public class SumHeights2
{

    public static void main(String[] args)
    {
    	int fireTool [] = {5, 3, 6, 7, 2};
    	System.out.println(sumHeights2(fireTool,0,4));
    }
    
    public static int sumHeights2(int[] heights, int start, int end) {
        
    	if(start == end )
    		return 0;
    	int amtToReturned = 0;
    	
    	for(int i = start+1 ; i <= end ; i++){
    		int diff =  heights[i] - heights[i-1]; 
    		
    		if(diff > 0){
    			amtToReturned += Math.abs(diff) * 2;
    		}else{
    			amtToReturned += Math.abs(diff);
    		}
    		
    	}
    	return amtToReturned;
    }

}
