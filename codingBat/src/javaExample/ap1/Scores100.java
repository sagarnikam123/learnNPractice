/**************************************************************************************************

    scores100 - solved
    
    Given an array of scores, return true if there are scores of 100 next to each other in the array.
    The array length will be at least 2.
***************************************************************************************************
scores100({1, 100, 100}) → true
scores100({1, 100, 99, 100}) → false
scores100({100, 1, 100, 100}) → true-
scores100({100, 1, 100, 1}) → false-
scores100({1, 2, 3, 4, 5}) → false
scores100({1, 2, 100, 4, 5}) → false
**************************************************************************************************/
package javaExample.ap1;

public class Scores100
{

    public static void main(String[] args)
    {
    	int glister [] = {1, 2, 100, 4, 5};
    	System.out.println(scores100(glister));
    }
    
    public static boolean scores100(int[] scores) {
        
    	for(int i =0;i<scores.length;i++){
    		if(i!=0 && scores[i]==100 && scores[i-1]==100)
    				return true;
    	}
    	return false;
    }
}
