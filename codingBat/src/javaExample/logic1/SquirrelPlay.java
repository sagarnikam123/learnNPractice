/**************************************************************************************************

    squirrelPlay - solved

    The squirrels in Palo Alto spend most of the day playing. In particular, they play
    if the temperature is between 60 and 90 (inclusive). Unless it is summer, then the upper
    limit is 100 instead of 90. Given an int temperature and a boolean isSummer,
    return true if the squirrels play and false otherwise.
***************************************************************************************************
squirrelPlay(70, false) → true
squirrelPlay(95, false) → false
squirrelPlay(95, true) → true
squirrelPlay(90, false) → true
squirrelPlay(90, true) → true
squirrelPlay(50, false) → false
squirrelPlay(50, true) → false
squirrelPlay(100, false) → false
squirrelPlay(100, true) → true
squirrelPlay(105, true) → false
squirrelPlay(59, false) → false
squirrelPlay(59, true) → false
squirrelPlay(60, false) → true
**************************************************************************************************/
package javaExample.logic1;

public class SquirrelPlay
{

    public static void main(String[] args)
    {
    	System.out.println(squirrelPlay(95, true));
    }

    public static boolean squirrelPlay(int temp, boolean isSummer) {

    	int upperTemp = 90;
    	if(isSummer){
    		upperTemp = 100;
    	}
    	if(temp >=60 && temp <=upperTemp){
    		return true;
    	}

    	return false;
    }

}
