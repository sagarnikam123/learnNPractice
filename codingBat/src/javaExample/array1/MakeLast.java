/**************************************************************************************************

    makeLast - solved
    
    Given an int array, return a new array with double the length where its last element is the 
    same as the original array, and all the other elements are 0. The original array will be 
    length 1 or more. Note: by default, a new int array contains all 0's. 
***************************************************************************************************
makeLast({4, 5, 6}) → {0, 0, 0, 0, 0, 6}
makeLast({1, 2}) → {0, 0, 0, 2}
makeLast({3}) → {0, 3}
makeLast({0}) → {0, 0}
makeLast({7, 7, 7}) → {0, 0, 0, 0, 0, 7}
makeLast({3, 1, 4}) → {0, 0, 0, 0, 0, 4}
makeLast({1, 2, 3, 4}) → {0, 0, 0, 0, 0, 0, 0, 4}
makeLast({1, 2, 3, 0}) → {0, 0, 0, 0, 0, 0, 0, 0}
makeLast({2, 4}) → {0, 0, 0, 4}
**************************************************************************************************/
package javaExample.array1;

public class MakeLast
{

    public static void main(String[] args)
    {
    	int lagli [] = {4, 5, 6};
    	int lagi [] ;
    	System.out.println(lagi =  makeLast(lagli));
    	for(int changli : lagi){
    		System.out.println(changli);
    	}
    }
    
    public static int[] makeLast(int[] nums) {
        int gendaSwami [] = new int [nums.length*2];
    	gendaSwami[(nums.length*2)-1] = nums[nums.length-1];
    	return gendaSwami;
    }


}
