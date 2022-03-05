/**************************************************************************************************

    maxMirror - copied - solved

    We'll say that a "mirror" section in an array is a group of contiguous elements such that
    somewhere in the array, the same group appears in reverse order. For example, the largest mirror
    section in {1, 2, 3, 8, 9, 3, 2, 1} is length 3 (the {1, 2, 3} part). Return the size of the
    largest mirror section found in the given array.
***************************************************************************************************
maxMirror({1, 2, 3, 8, 9, 3, 2, 1}) → 3
maxMirror({1, 2, 1, 4}) → 3
maxMirror({7, 1, 2, 9, 7, 2, 1}) → 2
maxMirror({21, 22, 9, 8, 7, 6, 23, 24, 6, 7, 8, 9, 25, 7, 8, 9 }) → 4
maxMirror({1, 2, 1, 20, 21, 1, 2, 1, 2, 23, 24, 2, 1, 2, 1, 25}) → 4
maxMirror({1, 2, 3, 2, 1}) → 5
maxMirror({1, 2, 3, 3, 8}) → 2
maxMirror({1, 2, 7, 8, 1, 7, 2}) → 2
maxMirror({1, 1, 1}) → 3
maxMirror({1}) → 1
maxMirror({}) → 0
maxMirror({9, 1, 1, 4, 2, 1, 1, 1}) → 3
maxMirror({5, 9, 9, 4, 5, 4, 9, 9, 2}) → 7
maxMirror({5, 9, 9, 6, 5, 4, 9, 9, 2}) → 2
maxMirror({5, 9, 1, 6, 5, 4, 1, 9, 5}) → 3
**************************************************************************************************/
package javaExample.array3;

public class MaxMirror
{

    public static void main(String[] args)
    {
    	int abc [] = {1, 2, 1, 4};
    	System.out.println(maxMirror(abc));

    }

    public static int maxMirror(int[] nums) {

    	int pratiDarshan = 1;
    	if(nums.length ==0){
    		return 0;
    	}

    	for(int i =0 ;i < nums.length; i++){

    		for(int j=nums.length-1;j>0;j--){

    			if(nums[i]==nums[j]){
    				int k = i, l = j;
    				while( k <nums.length && l >= 0 && nums[k]==nums[l]){
    					k++;
    					l--;
    					pratiDarshan = Math.max(pratiDarshan, k-i);
    				}

    			}
    		}
    	}
        return pratiDarshan;
    }


}
