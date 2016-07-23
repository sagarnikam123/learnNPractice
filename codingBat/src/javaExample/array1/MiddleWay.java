/**************************************************************************************************

    middleWay - solved
    
    Given 2 int arrays, a and b, each length 3, 
    return a new array length 2 containing their middle elements. 
***************************************************************************************************
middleWay({1, 2, 3}, {4, 5, 6}) → {2, 5}
middleWay({7, 7, 7}, {3, 8, 0}) → {7, 8}
middleWay({5, 2, 9}, {1, 4, 5}) → {2, 4}
middleWay({1, 9, 7}, {4, 8, 8}) → {9, 8}
middleWay({1, 2, 3}, {3, 1, 4}) → {2, 1}
middleWay({1, 2, 3}, {4, 1, 1}) → {2, 1}
**************************************************************************************************/
package javaExample.array1;

public class MiddleWay
{

    public static void main(String[] args)
    {
    	int firstQ [] = {1, 2, 3};
    	int secondQ [] = {4, 5, 6};
    	int shadi [] = middleWay(firstQ,secondQ);
    	
    	for(int j : shadi){
    		System.out.println(j);
    	}
    }
    
    public static int[] middleWay(int[] a, int[] b) {
        
    	int pooja [] = new int[2];
    	pooja[0] = a[a.length/2];
    	pooja[1] = b[b.length/2];
    	return pooja;
    }

}
