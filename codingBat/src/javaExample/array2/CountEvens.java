/**************************************************************************************************

    countEvens - solved
    
    Return the number of even ints in the given array.
    Note: the % "mod" operator computes the remainder, e.g. 5 % 2 is 1.
***************************************************************************************************
countEvens({2, 1, 2, 3, 4}) â†’ 3
countEvens({2, 2, 0}) â†’ 3
countEvens({1, 3, 5}) â†’ 0
countEvens({}) → 0
countEvens({11, 9, 0, 1}) → 1
countEvens({2, 11, 9, 0}) → 2
countEvens({2}) → 1
countEvens({2, 5, 12}) → 2
**************************************************************************************************/
package javaExample.array2;

public class CountEvens
{

    public static void main(String[] args)
    {
    	int superStar [] = {1, 3, 5};
    	System.out.println(countEvens(superStar));
    }
    
    public static int countEvens(int[] nums) {
        int noEvens = 0;
    	for(int less : nums){
    		if(less % 2 ==0){
    			noEvens++;
    		}
    	}
    	return noEvens;
    }

}