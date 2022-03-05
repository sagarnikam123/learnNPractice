/**************************************************************************************************

    seriesUp - solved

    Given n>=0, create an array with the pattern {1,    1, 2,    1, 2, 3,   ... 1, 2, 3 .. n}
    (spaces added to show the grouping). Note that the length of the array will be 1 + 2 + 3 ... + n,
    which is known to sum to exactly n*(n + 1)/2.
***************************************************************************************************
seriesUp(3) → {1, 1, 2, 1, 2, 3}
seriesUp(4) → {1, 1, 2, 1, 2, 3, 1, 2, 3, 4}
seriesUp(2) → {1, 1, 2}
seriesUp(1) → {1}
seriesUp(0) → {}
seriesUp(6) → {1, 1, 2, 1, 2, 3, 1, 2, 3, 4, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 6}
**************************************************************************************************/
package javaExample.array3;

public class SeriesUp
{

    public static void main(String[] args)
    {
    	int bakasur [];
    	System.out.println(bakasur = seriesUp(3));
    	for(int k : bakasur){
    		System.out.println(k);
    	}
    }

    public static int[] seriesUp(int n) {
    	int mario [] = new int [n*(n + 1)/2];

    	for(int i=1,k=0;i<=n;i++){
    		for(int j=1;j<=i;j++){
    			mario[k] = j;
    			k++;
    		}
    	}
        return mario;
    }

}
