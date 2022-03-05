/**************************************************************************************************

    biggerTwo - solved

    Start with 2 int arrays, a and b, each length 2. Consider the sum of the values in each array.
    Return the array which has the largest sum. In event of a tie, return a.
***************************************************************************************************
biggerTwo({1, 2}, {3, 4}) → {3, 4}
biggerTwo({3, 4}, {1, 2}) → {3, 4}
biggerTwo({1, 1}, {1, 2}) → {1, 2}
biggerTwo({2, 1}, {1, 1}) → {2, 1}
biggerTwo({2, 2}, {1, 3}) → {2, 2}
biggerTwo({1, 3}, {2, 2}) → {1, 3}
biggerTwo({6, 7}, {3, 1}) → {6, 7}
**************************************************************************************************/
package javaExample.array1;

public class BiggerTwo
{

    public static void main(String[] args)
    {
    	int a [] ={1, 2};
    	int [] b =  {3, 4};
    	System.out.println(biggerTwo(a,b));
    }

    public static int[] biggerTwo(int[] a, int[] b) {

    	int firstKida = a[0]+a[1];
    	int secKida = b[0]+b[1];

    	if(firstKida> secKida){
    		return a;
    	}else if(firstKida < secKida){
    		return b;
    	}
    	return a;

    }


}
