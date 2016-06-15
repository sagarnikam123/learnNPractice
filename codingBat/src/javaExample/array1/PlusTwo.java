/**************************************************************************************************

    plusTwo - solved
    
    Given 2 int arrays, each length 2, return a new array length 4 containing all their elements. 
***************************************************************************************************
plusTwo({1, 2}, {3, 4}) → {1, 2, 3, 4}
plusTwo({4, 4}, {2, 2}) → {4, 4, 2, 2}
plusTwo({9, 2}, {3, 4}) → {9, 2, 3, 4}
**************************************************************************************************/
package javaExample.array1;

public class PlusTwo
{

    public static void main(String[] args)
    {
    	int santa [] = {1, 2};
    	int banta [] = {3, 4};
    	int jadu[];
    	jadu = plusTwo(santa,banta);
    	for(int kishmiss : jadu){
    		System.out.println(kishmiss);
    	}
    }
    
    public static int[] plusTwo(int[] a, int[] b) {
        int gotya [] = new int[4];
        gotya[0] = a[0];
        gotya[1] = a[1];
        gotya[2] = b[0];
        gotya[3] = b[1];
    	
    	return gotya;
    }


}
