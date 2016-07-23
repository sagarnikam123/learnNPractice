/**************************************************************************************************

    make2 - solved

    Given 2 int arrays, a and b, return a new array length 2 containing, as much as will fit, 
    the elements from a followed by the elements from b. The arrays may be any length, including 0,
    but there will be 2 or more elements available between the 2 arrays. 
***************************************************************************************************
make2({4, 5}, {1, 2, 3}) → {4, 5}
make2({4}, {1, 2, 3}) → {4, 1}
make2({}, {1, 2}) → {1, 2}
make2({1, 2}, {}) → {1, 2}
make2({3}, {1, 2, 3}) → {3, 1}
make2({3}, {1}) → {3, 1}
make2({3, 1, 4}, {}) → {3, 1}
make2({1}, {1}) → {1, 1}
make2({1, 2, 3}, {7, 8}) → {1, 2}
make2({7, 8}, {1, 2, 3}) → {7, 8}
make2({7}, {1, 2, 3}) → {7, 1}
make2({5, 4}, {2, 3, 7}) → {5, 4}
**************************************************************************************************/
package javaExample.array1;

public class Make2
{

    public static void main(String[] args)
    {
    	int a [] = {};
    	int b [] = {1,2};
    	int jebya [] ;
    	System.out.println(jebya = make2(a,b));
    	
    	for(int chongya : jebya){
    		System.out.println(chongya);
    	}
    }
    
    public static int[] make2(int[] a, int[] b) {
        
    	int lagaan [] = new int [2];
    	
    	if(a.length ==0 ){
    		lagaan[0] = b[0];
    		lagaan[1] = b[1];
    	}else if(a.length==1){
    		lagaan[0] = a[0];
    		lagaan[1] = b[0];
    	}else{
    		lagaan[0] = a[0];
    		lagaan[1] = a[1];
    	}
    	
    	return lagaan;
    }


}
