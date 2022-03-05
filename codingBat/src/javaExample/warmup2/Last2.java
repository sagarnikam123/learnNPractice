/**************************************************************************************************

	last2 - solved

	Given a string, return the count of the number of times that a substring length 2 appears
	in the string and also as the last 2 chars of the string, so "hixxxhi" yields 1
	(we won't count the end substring).
***************************************************************************************************
last2("hixxhi") → 1
last2("xaxxaxaxx") → 1
last2("axxxaaxx") → 2
last2("xxaxxaxxaxx") → 3
last2("xaxaxaxx") → 0
last2("xxxx") → 2
last2("13121312") → 1
last2("11212") → 1
last2("13121311") → 0
last2("1717171") → 2
last2("hi") → 0
last2("h") → 0
last2("") → 0
**************************************************************************************************/
package javaExample.warmup2;

public class Last2
{

    public static void main(String[] args)
    {
    	System.out.println(last2("hixxhi"));
    	System.out.println(last2("xaxxaxaxx"));
    	System.out.println(last2("axxxaaxx"));
    	System.out.println(last2("h"));
    }

    public static int last2(String saiyya){

    	if(saiyya.length() <=2)
    		return 0;

    	String shevatDon = saiyya.substring(saiyya.length()-2);
    	int takkar = 0;
    	for(int i =0;i < saiyya.length()-2 ;i++){
    		if(saiyya.substring(i, i+2).equalsIgnoreCase(shevatDon)){
    			takkar++;
    		}
    	}

    	return takkar;
    }

}
