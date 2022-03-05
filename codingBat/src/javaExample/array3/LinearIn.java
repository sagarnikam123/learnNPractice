/**************************************************************************************************

    linearIn - solved

    Given two arrays of ints sorted in increasing order, outer and inner, return true if all of the
    numbers in inner appear in outer. The best solution makes only a single "linear" pass of
    both arrays, taking advantage of the fact that both arrays are already in sorted order.
***************************************************************************************************
linearIn({1, 2, 4, 6}, {2, 4}) → true
linearIn({1, 2, 4, 6}, {2, 3, 4}) → false
linearIn({1, 2, 4, 4, 6}, {2, 4}) → true
linearIn({2, 2, 4, 4, 6, 6}, {2, 4}) → true
linearIn({2, 2, 2, 2, 2}, {2, 2}) → true
linearIn({2, 2, 2, 2, 2}, {2, 4}) → false
linearIn({2, 2, 2, 2, 4}, {2, 4}) → true
linearIn({1, 2, 3}, {2}) → true
linearIn({1, 2, 3}, {-1}) → false
linearIn({1, 2, 3}, {}) → true
linearIn({-1, 0, 3, 3, 3, 10, 12}, {-1, 0, 3, 12}) → true
linearIn({-1, 0, 3, 3, 3, 10, 12}, {0, 3, 12, 14}) → false
linearIn({-1, 0, 3, 3, 3, 10, 12}, {-1, 10, 11}) → false
**************************************************************************************************/
package javaExample.array3;

public class LinearIn
{

    public static void main(String[] args)
    {
    	int vithuMauli [] = {-1, 0, 3, 3, 3, 10, 12};
    	int lekranchiSeva [] = {-1, 10, 11};
    	System.out.println(linearIn(vithuMauli,lekranchiSeva));
    }

    public static boolean linearIn(int[] outer, int[] inner) {

    	if(outer.length ==0 || outer.length < inner.length) return false;

    	for(int i=0;i<inner.length;i++){
    		for(int j=i;j< outer.length;j++){
    			if(inner[i]==outer[j]) break;
    			if(inner[i] != outer[j] && j == outer.length-1) return false;
    		}
    	}
    	return true;
    }

}
