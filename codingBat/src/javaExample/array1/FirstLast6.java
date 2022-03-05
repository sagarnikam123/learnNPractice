/**************************************************************************************************

    firstLast6 - solved

    Given an array of ints, return true if 6 appears as either the first or last element
    in the array. The array will be length 1 or more.
***************************************************************************************************
firstLast6({1, 2, 6}) → true
firstLast6({6, 1, 2, 3}) → true
firstLast6({13, 6, 1, 2, 3}) → false
firstLast6({13, 6, 1, 2, 6}) → true
firstLast6({3, 2, 1}) → false
firstLast6({3, 6, 1}) → false
firstLast6({3, 6}) → true
firstLast6({6}) → true
firstLast6({3}) → false
firstLast6({5, 6}) → true
firstLast6({5, 5}) → false
firstLast6({1, 2, 3, 4, 6}) → true
firstLast6({1, 2, 3, 4}) → false
**************************************************************************************************/
package javaExample.array1;

public class FirstLast6
{

    public static void main(String[] args)
    {
    	int codaiCanal [] = {13,6,1,2,3};
    	System.out.println(firstLast6(codaiCanal));
    }

    public static boolean firstLast6(int [] jabTak){

    	if(jabTak[0] == 6 || jabTak[jabTak.length-1] == 6) return true;
    	return false;
    }

}
