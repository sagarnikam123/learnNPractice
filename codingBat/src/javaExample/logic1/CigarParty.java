/**************************************************************************************************

    cigarParty - solved - H

    When squirrels get together for a party, they like to have cigars. A squirrel party is successful
    when the number of cigars is between 40 and 60, inclusive. Unless it is the weekend,
    in which case there is no upper bound on the number of cigars.
    Return true if the party with the given values is successful, or false otherwise.
***************************************************************************************************
cigarParty(30, false) → false
cigarParty(50, false) → true
cigarParty(70, true) → true
cigarParty(30, true) → false
cigarParty(50, true) → true
cigarParty(60, false) → true
cigarParty(61, false) → false
cigarParty(40, false) → true
cigarParty(39, false) → false
cigarParty(40, true) → true
cigarParty(39, true) → false
**************************************************************************************************/
package javaExample.logic1;

public class CigarParty
{

    public static void main(String[] args)
    {
    	System.out.println(cigarParty(39, true));
    }

    public static boolean cigarParty(int cigars, boolean isWeekend) {

    	if(isWeekend && cigars >=40){
    		return true;
    	}else if(cigars >=40 && cigars<=60) return true;

    	return false;
    }


}
