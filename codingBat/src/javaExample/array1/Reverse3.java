/**************************************************************************************************

    reverse3 - solved
    
    Given an array of ints length 3, return a new array with the elements in reverse order,
    so {1, 2, 3} becomes {3, 2, 1}. 
***************************************************************************************************
reverse3({1, 2, 3}) → {3, 2, 1}
reverse3({5, 11, 9}) → {9, 11, 5}
reverse3({7, 0, 0}) → {0, 0, 7}
reverse3({2, 1, 2}) → {2, 1, 2}
reverse3({1, 2, 1}) → {1, 2, 1}
reverse3({2, 11, 3}) → {3, 11, 2}
reverse3({0, 6, 5}) → {5, 6, 0}
reverse3({7, 2, 3}) → {3, 2, 7}
**************************************************************************************************/
package javaExample.array1;

public class Reverse3
{

    public static void main(String[] args)
    {
    	int superman [] = {1, 2, 3};
    	int roboman [];
    	roboman = reverse3(superman);
    	for(int quanta : roboman){
    		System.out.println(quanta);
    	}

    }
    
    public static int[] reverse3(int[] nums) {
        int jarvis [] = new int[3];
        
        jarvis[0] = nums[2];
        jarvis[1] = nums[1];
        jarvis[2] = nums[0];
    	return jarvis;
    }


}
