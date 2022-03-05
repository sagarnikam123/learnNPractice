/**************************************************************************************************

    front11 - solved

    Given 2 int arrays, a and b, of any length, return a new array
    with the first element of each array. If either array is length 0, ignore that array.
***************************************************************************************************
front11({1, 2, 3}, {7, 9, 8}) → {1, 7}
front11({1}, {2}) → {1, 2}
front11({1, 7}, {}) → {1}
front11({}, {2, 8}) → {2}
front11({}, {}) → {}
front11({3}, {1, 4, 1, 9}) → {3, 1}
front11({1, 4, 1, 9}, {}) → {1}
**************************************************************************************************/
package javaExample.array1;

public class Front11
{

    public static void main(String[] args)
    {
    	int a [] = {1,2,3};
    	int b [] = {7,9,8};
    	int jebya [] = null;
    	System.out.println(jebya = front11(a,b));
    	for(int jacho : jebya){
    		System.out.println(jacho);
    	}
    }

    public static int[] front11(int[] a, int[] b) {

        int noLargeArray = 0;

    	if(a.length >=1){
    		noLargeArray++;
    	}

    	if(b.length >= 1){
    		noLargeArray++;
    	}
    	 int salute []= new int[noLargeArray];

    	if(a.length>=1){
    		salute[0] = a[0];
    	}
    	if(a.length>=1 && b.length >= 1 ){
    		salute[1] = b[0];
    	}else if(b.length >= 1){
    		salute[0] = b[0];
    	}
    	return salute;
    }


}
