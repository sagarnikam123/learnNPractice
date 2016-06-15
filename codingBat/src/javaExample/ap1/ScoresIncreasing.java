/**************************************************************************************************

    scoresIncreasing - solved
    
    Given an array of scores, return true if each score is equal or greater than the one before. 
    The array will be length 2 or more.
***************************************************************************************************
scoresIncreasing({1, 3, 4}) → true
scoresIncreasing({1, 3, 2}) → false
scoresIncreasing({1, 1, 4}) → true
scoresIncreasing({1, 1, 2, 4, 4, 7}) → true
scoresIncreasing({1, 1, 2, 4, 3, 7}) → false
scoresIncreasing({-5, 4, 11}) → true
**************************************************************************************************/
package javaExample.ap1;

public class ScoresIncreasing
{

    public static void main(String[] args)
    {
    	int dilRomance [] = {1, 1, 4};
    	System.out.println(scoresIncreasing(dilRomance));
    }
    
    public static boolean scoresIncreasing(int[] scores) {
        
    	int prev = scores[0];
    	for(int i=1;i<scores.length;i++){
    		
    		if(scores[i]>=prev){
    			prev = scores[i];
    		}else{
    			return false;
    		}
    	}
    	return true;
    }

}
