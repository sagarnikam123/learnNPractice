/**************************************************************************************************

    sum3 - solved

    Given an array of ints length 3, return the sum of all the elements.
***************************************************************************************************
sum3({1, 2, 3}) → 6
sum3({5, 11, 2}) → 18
sum3({7, 0, 0}) → 7
sum3({1, 2, 1}) → 4
sum3({1, 1, 1}) → 3
sum3({2, 7, 2}) → 11
**************************************************************************************************/
package javaExample.array1;

public class Sum3
{

    public static void main(String[] args)
    {
    	int kesariya [] = {7,0,0,};
    	System.out.println(sum3(kesariya));
    }

    public static int sum3(int nums[]){
    	int gharchupa = 0;
    	for(int khiladi : nums){
    		gharchupa+=khiladi;
    	}
    	return gharchupa;
    }
}
