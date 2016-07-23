/**************************************************************************************************

    bunnyEars2 - solved
    
    We have bunnies standing in a line, numbered 1, 2, ... The odd bunnies (1, 3, ..) have the normal
    2 ears. The even bunnies (2, 4, ..) we'll say have 3 ears, because they each have a raised foot.
    Recursively return the number of "ears" in the bunny line 1, 2, ... n (without loops or multiplication).
***************************************************************************************************
bunnyEars2(0) → 0
bunnyEars2(1) → 2
bunnyEars2(2) → 5
bunnyEars2(3) → 7
bunnyEars2(4) → 10
bunnyEars2(5) → 12
bunnyEars2(6) → 15
bunnyEars2(10) → 25
**************************************************************************************************/
package javaExample.recursion1;

public class BunnyEars2
{

    public static void main(String[] args)
    {
    	System.out.println(bunnyEars2(3));
    }
    
    public static int bunnyEars2(int bunnies) {
        
    	if(bunnies==0){
    		return 0;
    	}
    	int quantel = 2;
    	if(bunnies%2==0) quantel =3;
    	return bunnyEars2(bunnies-1)+quantel;
    }

}
