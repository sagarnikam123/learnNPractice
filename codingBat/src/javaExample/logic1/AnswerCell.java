/**************************************************************************************************

    answerCell - solved

    Your cell phone rings. Return true if you should answer it. Normally you answer, except
    in the morning you only answer if it is your mom calling. In all cases,
    if you are asleep, you do not answer.
    Parameter in series - Morning, Mom, Asleep.
***************************************************************************************************
answerCell(false, false, false) → true
answerCell(false, false, true) → false
answerCell(true, false, false) → false
answerCell(true, true, false) → true
answerCell(false, true, false) → true
answerCell(true, true, true) → false
**************************************************************************************************/
package javaExample.logic1;

public class AnswerCell
{

    public static void main(String[] args)
    {
    	System.out.println(answerCell(true, false, false));
    }

    public static boolean answerCell(boolean isMorning, boolean isMom, boolean isAsleep) {

    	if(isAsleep){
    		return false;
    	}
    	if(isMorning){
    		if(isMom){
    			return true;
    		}else{
    			return false;
    		}
    	}
    	return true;
    }


}
