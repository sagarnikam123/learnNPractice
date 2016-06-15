/**************************************************************************************************

    withoutDoubles - solved
    
    Return the sum of two 6-sided dice rolls, each in the range 1..6. However, if noDoubles is true,
    if the two dice show the same value, increment one die to the next value,
    wrapping around to 1 if its value was 6. 
***************************************************************************************************
withoutDoubles(2, 3, true) → 5
withoutDoubles(3, 3, true) → 7
withoutDoubles(3, 3, false) → 6
withoutDoubles(2, 3, false) → 5
withoutDoubles(5, 4, true) → 9
withoutDoubles(5, 4, false) → 9
withoutDoubles(5, 5, true) → 11
withoutDoubles(5, 5, false) → 10	
withoutDoubles(6, 6, true) → 7
withoutDoubles(6, 6, false) → 12
withoutDoubles(1, 6, true) → 7
withoutDoubles(6, 1, false) → 7
**************************************************************************************************/
package javaExample.logic1;

public class WithoutDoubles
{

    public static void main(String[] args)
    {
    	System.out.println(withoutDoubles(3, 3, false));
    }
    
    public static int withoutDoubles(int die1, int die2, boolean noDoubles) {
    	
    	if(noDoubles){
    		
    		if(die1==die2){
	    		if(die1==6){
	    			die1=1;
	    		}else{
	    			die1++;
	    		}
	    		
    		}
    	}
        return die1+die2;
    }


}
