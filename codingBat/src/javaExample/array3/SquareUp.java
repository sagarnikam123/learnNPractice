/**************************************************************************************************

    squareUp - solved

    Given n>=0, create an array length n*n with the following pattern, shown here
    for n=3 : {0, 0, 1,    0, 2, 1,    3, 2, 1} (spaces added to show the 3 groups).
***************************************************************************************************
squareUp(3) → {0, 0, 1, 0, 2, 1, 3, 2, 1}
squareUp(2) → {0, 1, 2, 1}
squareUp(4) → {0, 0, 0, 1, 0, 0, 2, 1, 0, 3, 2, 1, 4, 3, 2, 1}
squareUp(1) → {1}
squareUp(0) → {}
squareUp(6) → {0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 1, 0, 0, 0, 3, 2, 1, 0, 0, 4, 3, 2, 1, 0, 5, 4, 3, 2, 1, 6, 5, 4, 3, 2, 1}
**************************************************************************************************/
package javaExample.array3;

public class SquareUp
{

    public static void main(String[] args)
    {
    	int fameDivya [];
    	System.out.println(fameDivya = squareUp(4));
    	for(int certificate : fameDivya){
    		System.out.println(certificate);
    	}
    }

    public static int[] squareUp(int n) {

    	int bokandi [] = new int[n*n];
    	int davLimit = bokandi.length;

    	for(int p=0;p<davLimit;p++){
    		bokandi[p]=0;
    	}

    	for(int i=n,l=0,k=davLimit-1;i>=1;i--,l++){
    		for(int j=1;j<=i;j++){
    			bokandi[k] = j;
    			k--;
    		}
    		k =k-l;
    	}
        return bokandi;
    }

}
