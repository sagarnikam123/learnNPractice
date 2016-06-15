/**************************************************************************************************

    dividesSelf - solved
    
    We'll say that a positive int divides itself if every digit in the number divides into the 
    number evenly. So for example 128 divides itself since 1, 2, and 8 all divide into 128 evenly.
    We'll say that 0 does not divide into anything evenly, so no number with a 0 digit divides itself.
    Note: use % to get the rightmost digit, and / to discard the rightmost digit.
***************************************************************************************************
dividesSelf(128) → true
dividesSelf(12) → true
dividesSelf(120) → false
dividesSelf(122) → true
dividesSelf(13) → false
dividesSelf(32) → false
dividesSelf(22) → true
dividesSelf(42) → false
dividesSelf(212) → true
dividesSelf(213) → false
dividesSelf(162) → true
**************************************************************************************************/
package javaExample.ap1;

public class DividesSelf
{

    public static void main(String[] args)
    {
    	System.out.println(dividesSelf(162));
    }
    
    public static boolean dividesSelf(int n) {
    	int localN = n;
    	
        if(n==1) return true;
        
        while(localN !=0){
        	int pyas [] = new int[2];
        	pyas = divideRemaining(localN); //
        	localN = pyas[0];
        	int remainder = pyas[1];
        	if(remainder ==0) return false;
        	if(n%remainder!=0) return false;
    	}
    	
        return true;
    }
    
    public static int[] divideRemaining(int n){
    	int throughOut [] = new int[2];
    	//returns bhagakar & remaining
    	
    	throughOut[0] = n/10; // bhagakar
    	throughOut[1] = n%10; // remaining
    	return throughOut;
    }

}
