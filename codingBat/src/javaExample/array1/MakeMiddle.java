/**************************************************************************************************

    makeMiddle - solved
    
    Given an array of ints of even length, return a new array length 2 containing the middle 
    two elements from the original array. The original array will be length 2 or more. 
***************************************************************************************************
makeMiddle({1, 2, 3, 4}) → {2, 3}
makeMiddle({7, 1, 2, 3, 4, 9}) → {2, 3}
makeMiddle({1, 2}) → {1, 2}
makeMiddle({5, 2, 4, 7}) → {2, 4}
makeMiddle({9, 0, 4, 3, 9, 1}) → {4, 3}
**************************************************************************************************/
package javaExample.array1;

public class MakeMiddle
{

    public static void main(String[] args)
    {
    	int tuManShudi [] = {1,2};
    	int pyara [];
    	System.out.println(pyara = makeMiddle(tuManShudi));
    	for(int khiladi : pyara ){
    		System.out.println(khiladi);
    	}
    }
    
    public static int[] makeMiddle(int[] nums) {
    	
    	int khultabad [] = {nums[(nums.length/2)-1],nums[(nums.length/2)]};
    	return khultabad;
    
    }


}
