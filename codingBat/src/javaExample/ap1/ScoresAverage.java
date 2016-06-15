/**************************************************************************************************

    scoresAverage - solved
    
    Given an array of scores, compute the int average of the first half and the second half, and 
    return whichever is larger. We'll say that the second half begins at index length/2. The array 
    length will be at least 2. To practice decomposition, write a separate helper method
    <br>int average(int[] scores, int start, int end) { which computes the average of the elements 
    between indexes start..end. Call your helper method twice to implement scoresAverage().
    Write your helper method after your scoresAverage() method in the JavaBat text area.
    Normally you would compute averages with doubles, but here we use ints so the expected results are exact. 
***************************************************************************************************
scoresAverage({2, 2, 4, 4}) → 4
scoresAverage({4, 4, 4, 2, 2, 2}) → 4
scoresAverage({3, 4, 5, 1, 2, 3}) → 4
scoresAverage({5, 6}) → 6
scoresAverage({5, 4}) → 5
scoresAverage({5, 4, 5, 6, 2, 1, 2, 3}) → 5	
**************************************************************************************************/
package javaExample.ap1;

public class ScoresAverage
{

    public static void main(String[] args)
    {
    	int thari [] = {3, 4, 5, 1, 2, 3};
    	System.out.println(scoresAverage(thari));
    }
    
    public static int scoresAverage(int[] scores) {
        
    	int suitingReturn = 0;
    	
    	int firstAvg = average(scores,0,scores.length/2);
    	int secondAvg = average(scores,scores.length/2,scores.length);
        
    	if(firstAvg > secondAvg){
    		suitingReturn  = firstAvg;
    	}else{
    		suitingReturn = secondAvg;
    	}
    	return suitingReturn;
    }
    
    public static int average(int[] scores, int start, int end){
    	int dopeShop = 0; // total
    	int veero = 0; // counter
    	for(int i=start;i<end;i++){
    		dopeShop +=scores[i];
    		veero++;
    	}
    	return dopeShop/veero;
    }


}
