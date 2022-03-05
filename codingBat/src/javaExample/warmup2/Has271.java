/**************************************************************************************************

     has271 - solved

     Given an array of ints, return true if it contains a 2, 7, 1 pattern -- a value, followed
     by the value plus 5, followed by the value minus 1. Additionally the 271 counts even
     if the "1" differs by 2 or less from the correct value.
***************************************************************************************************
has271({1, 2, 7, 1}) → true
has271({1, 2, 8, 1}) → false
has271({2, 7, 1}) → true
has271({3, 8, 2}) → true
has271({2, 7, 3}) → true
has271({2, 7, 4}) → false
has271({2, 7, -1}) → true
has271({2, 7, -2}) → false
has271({4, 5, 3, 8, 0}) → true
has271({2, 7, 5, 10, 4}) → true
has271({2, 7, -2, 4, 9, 3}) → true
has271({2, 7, 5, 10, 1}) → false
has271({2, 7, -2, 4, 10, 2}) → false
**************************************************************************************************/
package javaExample.warmup2;

public class Has271
{

    public static void main(String[] args)
    {
    	System.out.println(has271(1, 2, 7, 1));
    	System.out.println(has271(1, 2, 8, 1));
    	System.out.println(has271(2, 7, 1));

//    	System.out.println(has271(3, 8, 2));
//    	System.out.println(has271(2, 7, 3));
//    	System.out.println(has271(2, 7, -1));
//    	System.out.println(has271(4, 5, 3, 8, 0));
//    	System.out.println(has271(2, 7, 5, 10, 4));
//    	System.out.println(has271(2, 7, -2, 4, 9, 3));

    	System.out.println(myhas271(2, 7, 4));
    }

    // myCode
    public static boolean myhas271(int ... humpty){

    	boolean returnWhat = false;
    	for(int i=0;i<humpty.length;i++){
    		int end = i+2;
    		if(end < humpty.length ){
    			//System.out.println(i+" "+end);
    			int first = humpty[i]; // ~2
    			if(humpty[i+1]==first+5 && Math.abs(humpty[i+2] - (first-1)) <= 2){
    				returnWhat = true;
    			}
    		}
    	}
    	return returnWhat;
    }

    // std code
    public static boolean has271(int...nums) {
    	  // Iterate < length-2, so can use i+1 and i+2 in the loop.
    	  // Return true immediately when seeing 271.
    	  for (int i=0; i < (nums.length-2); i++) {
    	    int val = nums[i];
    	    if (nums[i+1] == (val + 5) &&
    	      Math.abs(nums[i+2] - (val-1)) <= 2)  return true;
    	  }

    	  // If we get here ... none found.
    	  return false;
    	}
}
