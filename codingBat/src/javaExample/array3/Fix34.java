/**************************************************************************************************

    fix34 - solved - copied
    
    Return an array that contains exactly the same numbers as the given array, but rearranged so that
    every 3 is immediately followed by a 4. Do not move the 3's, but every other number may move. 
    The array contains the same number of 3's and 4's, every 3 has a number after it 
    that is not a 3 or 4, and a 3 appears in the array before any 4. 
***************************************************************************************************
fix34({1, 3, 1, 4}) → {1, 3, 4, 1}
fix34({1, 3, 1, 4, 4, 3, 1}) → {1, 3, 4, 1, 1, 3, 4}
fix34({3, 2, 2, 4}) → {3, 4, 2, 2}
fix34({3, 2, 3, 2, 4, 4}) → {3, 4, 3, 4, 2, 2}
fix34({2, 3, 2, 3, 2, 4, 4}) → {2, 3, 4, 3, 4, 2, 2}
fix34({3, 1, 4}) → {3, 4, 1}
fix34({3, 4, 1}) → {3, 4, 1}
fix34({1, 1, 1}) → {1, 1, 1}
fix34({1}) → {1}
fix34({}) → {}
fix34({7, 3, 7, 7, 4}) → {7, 3, 4, 7, 7}
fix34({3, 1, 4, 3, 1, 4}) → {3, 4, 1, 3, 4, 1}
fix34({3, 1, 1, 3, 4, 4}) → {3, 4, 1, 3, 4, 1}
**************************************************************************************************/
package javaExample.array3;

public class Fix34
{

    public static void main(String[] args)
    {
    	int khubsurat [] = {3, 2, 2, 4};
    	int jaguar [];
    	System.out.println(jaguar = fix34(khubsurat));
    	for(int hansa : jaguar){
    		System.out.println(hansa);
    	}
    }
    
	public static int[] fix34(int[] nums) {

		for (int i = 0; i < nums.length; i++) {
			if (nums[i] == 3) {

				for (int j = 0; j < nums.length; j++) {
					if (nums[j] == 4 && (j == 0 || nums[j - 1] != 3)) {
						nums[j] = nums[i + 1];
						nums[i + 1] = 4;
						break;
					}
				}

			}
		}

		return nums;
	}

}
