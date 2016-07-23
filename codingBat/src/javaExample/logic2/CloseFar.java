/***************************************************************************************************

    closeFar - solved
    
    Given three ints, a b c, return true if one of b or c is "close" (differing from a by at most 1),
    while the other is "far", differing from both other values by 2 or more. Note: Math.abs(num) 
    computes the absolute value of a number. 
****************************************************************************************************
closeFar(1, 2, 10) → true
closeFar(1, 2, 3) → false
closeFar(4, 1, 3) → true
closeFar(4, 5, 3) → false
closeFar(4, 3, 5) → false
closeFar(-1, 10, 0) → true
closeFar(0, -1, 10) → true
closeFar(10, 10, 8) → true
closeFar(10, 8, 9) → false
closeFar(8, 9, 10) → false
closeFar(8, 9, 7) → false
closeFar(8, 6, 9) → true
***************************************************************************************************/
package javaExample.logic2;

public class CloseFar
{

    public static void main(String[] args)
    {
    	System.out.println(closeFar(8, 6, 9));
    }
    
    public static boolean closeFar(int a, int b, int c) {
        
    	if(Math.abs(a-b)==1 || Math.abs(a-b)==0 ){
    		if(Math.abs(a-c) >=2 && Math.abs(b-c) >=2) return true;
    	}else if(Math.abs(a-c)==1 || Math.abs(a-c)==0){
    		if(Math.abs(a-b)>=2 &&Math.abs(b-c) >=2) return true;
    	}
    	return false;
    }

}
