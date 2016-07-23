/**************************************************************************************************

    bunnyEars - solved
    
    We have a number of bunnies and each bunny has two big floppy ears. We want to compute the total
    number of ears across all the bunnies recursively (without loops or multiplication). 
***************************************************************************************************
bunnyEars(0) → 0
bunnyEars(1) → 2
bunnyEars(2) → 4
bunnyEars(3) → 6
bunnyEars(4) → 8
bunnyEars(5) → 10
bunnyEars(12) → 24
bunnyEars(50) → 100
bunnyEars(234) → 468
**************************************************************************************************/
package javaExample.recursion1;

public class BunnyEars
{

    public static void main(String[] args)
    {
    	System.out.println(bunnyEars(0));
    }
   
    public static int bunnyEars(int bunnies) {
    	
    	if(bunnies==0){
    		return 0;
    	}
    	return bunnyEars(bunnies-1)+2;
    }

}
