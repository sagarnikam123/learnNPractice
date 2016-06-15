/**************************************************************************************************

    hasOne - solved
    
    Given a positive int n, return true if it contains a 1 digit. Note: use % to get the rightmost
    digit, and / to discard the rightmost digit. 
***************************************************************************************************
hasOne(10) → true
hasOne(22) → false
hasOne(220) → false
hasOne(212) → true
hasOne(1) → true
hasOne(9) → false	
hasOne(211112) → true
hasOne(121121) → true
hasOne(222222) → false
hasOne(56156) → true
hasOne(56556) → false	
**************************************************************************************************/
package javaExample.ap1;

public class HasOne
{

    public static void main(String[] args)
    {
    	System.out.println(hasOne(56556));
    }
    
    public static boolean hasOne(int n) {
        int localN = n;
    	
        if(n==1) return true;
        
        while(localN !=0){
        	int pyas [] = new int[2];
        	pyas = divideRemaining(localN); //
        	localN = pyas[0];
        	int remainder = pyas[1];
        	if(remainder==1) return true;
    	}
    	
    	return false;
    }
    
    public static int[] divideRemaining(int n){
    	int throughOut [] = new int[2];
    	//returns bhagakar & remaining
    	
    	throughOut[0] = n/10; // bhagakar
    	throughOut[1] = n%10; // remaining
    	return throughOut;
    }

}
