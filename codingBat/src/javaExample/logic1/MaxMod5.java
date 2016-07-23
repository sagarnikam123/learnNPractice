/**************************************************************************************************

    maxMod5 - solved
    
    Given two int values, return whichever value is larger. However if the two values have the 
    same remainder when divided by 5, then the return the smaller value. However, in all cases, 
    if the two values are the same, return 0. Note: the % "mod" operator computes the remainder,
    e.g. 7 % 5 is 2.
***************************************************************************************************
maxMod5(2, 3) → 3
maxMod5(6, 2) → 6
maxMod5(3, 2) → 3
maxMod5(8, 12) → 12
maxMod5(7, 12) → 7
maxMod5(11, 6) → 6
maxMod5(2, 7) → 2
maxMod5(7, 7) → 0
maxMod5(9, 1) → 9
maxMod5(9, 14) → 9
maxMod5(1, 2) → 2
**************************************************************************************************/
package javaExample.logic1;

public class MaxMod5
{

    public static void main(String[] args)
    {
    	System.out.println(maxMod5(3,2));
    }
    
    public static int maxMod5(int a, int b) {
    	int taller =0;
    	int smaller = 0;
    	int throwOut = 0;
    	
    	if(a==b) return throwOut;
    	
    	if(a>b){
    		taller = a;
    		smaller = b;
    	}else{
    		taller = b;
    		smaller = a;
    	}
    	
    	if(a%5 == b %5){
    		throwOut =  smaller;
    	}else{
    		throwOut = taller;
    	}
    	
        return throwOut;
    }


}
