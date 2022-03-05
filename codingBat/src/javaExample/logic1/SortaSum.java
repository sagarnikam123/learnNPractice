/**************************************************************************************************

    sortaSum - solved

    Given 2 ints, a and b, return their sum. However, sums in the range 10..19 inclusive,
    are forbidden, so in that case just return 20.
***************************************************************************************************
sortaSum(3, 4) → 7
sortaSum(9, 4) → 20
sortaSum(10, 11) → 21
sortaSum(12, -3) → 9
sortaSum(-3, 12) → 9
sortaSum(4, 5) → 9
sortaSum(4, 6) → 20
sortaSum(14, 7) → 21
sortaSum(14, 6) → 20
**************************************************************************************************/
package javaExample.logic1;

public class SortaSum
{

    public static void main(String[] args)
    {
    	System.out.println(sortaSum(10, 11));
    }

    public static int sortaSum(int a, int b) {

    	int summation = (a+b);
    	if(summation >=10 && summation <=19){
    		return 20;
    	}

    	return summation;
    }


}
