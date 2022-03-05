/**************************************************************************************************

    rotateLeft3 - solved

    Given an array of ints length 3, return an array with the elements
    "rotated left" so {1, 2, 3} yields {2, 3, 1}
***************************************************************************************************
rotateLeft3({1, 2, 3}) → {2, 3, 1}
rotateLeft3({5, 11, 9}) → {11, 9, 5}
rotateLeft3({7, 0, 0}) → {0, 0, 7}
rotateLeft3({1, 2, 1}) → {2, 1, 1}
rotateLeft3({0, 0, 1}) → {0, 1, 0}
**************************************************************************************************/
package javaExample.array1;

public class RotateLeft3
{

    public static void main(String[] args)
    {
    	int tevar [] = {1, 2, 3};
    	int ved [];
    	ved = rotateLeft3(tevar);
    	for(int deva: ved){
    		System.out.println(deva);
    	}
    }

    public static int[] rotateLeft3(int[] nums) {
        int dasi[] = new int[3];
        dasi[0] = nums[1];
        dasi[1] = nums[2];
        dasi[2] = nums[0];
    	return dasi;
    }
}
