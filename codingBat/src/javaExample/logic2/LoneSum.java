/***************************************************************************************************

    loneSum - solved

    Given 3 int values, a b c, return their sum. However, if one of the values is the same
    as another of the values, it does not count towards the sum.
****************************************************************************************************
loneSum(1, 2, 3) → 6
loneSum(3, 2, 3) → 2
loneSum(3, 3, 3) → 0
loneSum(9, 2, 2) → 9
loneSum(2, 2, 9) → 9
loneSum(2, 9, 2) → 9
loneSum(2, 9, 3) → 14
loneSum(4, 2, 3) → 9
loneSum(1, 3, 1) → 3
***************************************************************************************************/
package javaExample.logic2;

public class LoneSum
{

    public static void main(String[] args)
    {
    	System.out.println(loneSum(3, 3, 3));
    }

    public static int loneSum(int a, int b, int c) {

    	if(a==b && b==c && a==c) return 0;
    	if(a==b){
    		return c;
    	}else if(a==c){
    		return b;
    	}else if(b==c){
    		return a;
    	}

    	return a+b+c;
    }
}
