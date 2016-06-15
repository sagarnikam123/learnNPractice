/**************************************************************************************************

    blueTicket - solved
    
    You have a blue lottery ticket, with ints a, b, and c on it. This makes three pairs,
    which we'll call ab, bc, and ac. Consider the sum of the numbers in each pair.
    If any pair sums to exactly 10, the result is 10. Otherwise if the ab sum is exactly 10 more 
    than either bc or ac sums, the result is 5. Otherwise the result is 0. 
***************************************************************************************************
blueTicket(9, 1, 0) → 10
blueTicket(9, 2, 0) → 0
blueTicket(6, 1, 4) → 10
blueTicket(6, 1, 5) → 0
blueTicket(10, 0, 0) → 10
blueTicket(15, 0, 5) → 5
blueTicket(5, 15, 5) → 10
blueTicket(4, 11, 1) → 5
blueTicket(13, 2, 3) → 5
blueTicket(8, 4, 3) → 0
blueTicket(8, 4, 2) → 10
blueTicket(8, 4, 1) → 0
**************************************************************************************************/
package javaExample.logic1;

public class BlueTicket
{

    public static void main(String[] args)
    {
    	System.out.println(blueTicket(8, 4, 1));
    }
    
    public static int blueTicket(int a, int b, int c) {
     
    	int ab = a+b;
    	int bc = b+c;
    	int ac = a+c;
    	
    	if(ab ==10 || bc ==10 || ac ==10){
    		return 10;
    	}else if(ab==bc+10 || ab==10+ac ){
    		return 5;
    	}
    	
    	return 0;   
    }


}
