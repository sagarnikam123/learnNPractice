/***************************************************************************************************

    luckySum - solved

    Given 3 int values, a b c, return their sum. However, if one of the values is 13 then
    it does not count towards the sum and values to its right do not count. So for example,
    if b is 13, then both b and c do not count.
****************************************************************************************************
luckySum(1, 2, 3) → 6
luckySum(1, 2, 13) → 3
luckySum(1, 13, 3) → 1
luckySum(1, 13, 13) → 1
luckySum(6, 5, 2) → 13
luckySum(13, 2, 3) → 0
luckySum(13, 2, 13) → 0
luckySum(13, 13, 2) → 0
luckySum(9, 4, 13) → 13
luckySum(8, 13, 2) → 8
luckySum(7, 2, 1) → 10
luckySum(3, 3, 13) → 6
***************************************************************************************************/
package javaExample.logic2;

public class LuckySum
{

    public static void main(String[] args)
    {
    	System.out.println(luckySum(1, 13, 3));
    }

    public static int luckySum(int a, int b, int c) {

    	if((a==13 && b==13 && c==13) || a==13) return 0;
    	if(b==13 && a!=13){
    		return a;
    	}if(c==13){
    		return a+b;
    	}

    	return a+b+c;
    }

}
