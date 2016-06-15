/***************************************************************************************************

    blackjack - solved
    
    Given 2 int values greater than 0, return whichever value is nearest to 21 without going over.
    Return 0 if they both go over. 
****************************************************************************************************
blackjack(19, 21) → 21
blackjack(21, 19) → 21
blackjack(19, 22) → 19
blackjack(22, 19) → 19
blackjack(22, 50) → 0
blackjack(22, 22) → 0
blackjack(33, 1) → 1
blackjack(1, 2) → 2
blackjack(34, 33) → 0
blackjack(17, 19) → 19
blackjack(18, 17) → 18	
blackjack(16, 23) → 16
blackjack(3, 4) → 4
blackjack(3, 2) → 3
blackjack(21, 20) → 21
***************************************************************************************************/
package javaExample.logic2;

public class Blackjack
{

    public static void main(String[] args)
    {
    	System.out.println(blackjack(21, 19));
    }
    
    public static int blackjack(int a, int b) {
    	
    	if(a >21 && b > 21) return 0;
    	if(a > 21) return b;
    	if(b > 21) return a;
    	
    	int nagachPillu = Math.abs(21 - a);
    	int sakdichPillu = Math.abs(21 - b);
    	
    	if(nagachPillu < sakdichPillu){
    		return a;
    	}else {
    		return b;
        }
    }

}
