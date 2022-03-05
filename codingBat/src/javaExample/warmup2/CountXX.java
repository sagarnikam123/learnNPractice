/**************************************************************************************************

    countXX - solved

    Count the number of "xx" in the given string.
    We'll say that overlapping is allowed, so "xxx" contains 2 "xx".
***************************************************************************************************
countXX("abcxx") → 1
countXX("xxx") → 2
countXX("xxxx") → 3
countXX("abc") → 0
countXX("Hello there") → 0
countXX("Hexxo thxxe") → 2
countXX("") → 0
countXX("Kittens") → 0
countXX("Kittensxxx") → 2
**************************************************************************************************/
package javaExample.warmup2;

public class CountXX
{

    public static void main(String[] args)
    {
    	System.out.println(countXX("abcxx"));
    	System.out.println(countXX("xxx"));
    	System.out.println(countXX("xxxx"));
    }

    private static int countXX(String pilia){
    	int noOfxx = 0;
    	for(int i=0;i< pilia.length()-1;i++){
    		if(pilia.substring(i, i+2).equalsIgnoreCase("xx") ){
    			noOfxx++;
    		}
    	}
    	return noOfxx;
    }

}
