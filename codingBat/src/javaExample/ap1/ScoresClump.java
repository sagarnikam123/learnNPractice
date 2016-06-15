/**************************************************************************************************

    scoresClump - solved
    
    Given an array of scores sorted in increasing order, return true if the array contains 3 
    adjacent scores that differ from each other by at most 2, such as with {3, 4, 5} or {3, 5, 5}. 
***************************************************************************************************
scoresClump({3, 4, 5}) → true
scoresClump({3, 4, 6}) → false
scoresClump({1, 3, 5, 5}) → true
scoresClump({2, 4, 5, 6}) → true
scoresClump({2, 4, 5, 7}) → false
scoresClump({2, 4, 4, 7}) → true
scoresClump({3, 3, 6, 7, 9}) → false
scoresClump({3, 3, 7, 7, 9}) → true
scoresClump({4, 5, 8}) → false
**************************************************************************************************/
package javaExample.ap1;

public class ScoresClump
{

    public static void main(String[] args)
    {
    	int yara [] = {4, 5, 8};
    	System.out.println(scoresClump(yara));
    }
    
    public static boolean scoresClump(int[] scores) {
        
    	for(int i=0;i <=scores.length-3; i++){
    		int firstDiff = Math.abs(scores[i]- scores[i+1]);
    		int secondDiff = Math.abs(scores[i+1]- scores[i+2]);
    		
    		if(firstDiff + secondDiff == 2) return true;
    	}
    	
    	return false;
    }

}
