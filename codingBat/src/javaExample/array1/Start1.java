/**************************************************************************************************

    start1 - solved
    
    Start with 2 int arrays, a and b, of any length. 
    Return how many of the arrays have 1 as their first element. 
***************************************************************************************************
start1({1, 2, 3}, {1, 3}) → 2
start1({7, 2, 3}, {1}) → 1
start1({1, 2}, {}) → 1
start1({}, {1, 2}) → 1
start1({7}, {}) → 0
start1({7}, {1}) → 1
start1({1}, {1}) → 2
start1({7}, {8}) → 0
start1({}, {}) → 0
start1({1, 3}, {1}) → 2
**************************************************************************************************/
package javaExample.array1;

public class Start1
{

    public static void main(String[] args)
    {
    	int nakale [] = {7, 2, 3};
    	int vitthala [] = {1};
    	System.out.println(start1(nakale,vitthala));
    }
    
    public static int start1(int[] a, int[] b) {
        int elementa=0;

        if(a.length>=1){
        	if(a[0]==1){
        		elementa++;
        	}
        }
        if(b.length>=1){
        	if(b[0]==1){
        		elementa++;
        	}
        }
    	return elementa;
    }


}
