/**************************************************************************************************

    noTriples - solved

    Given an array of ints, we'll say that a triple is a value appearing 3 times
    in a row in the array. Return true if the array does not contain any triples.
***************************************************************************************************
noTriples({1, 1, 2, 2, 1}) → true
noTriples({1, 1, 2, 2, 2, 1}) → false
noTriples({1, 1, 1, 2, 2, 2, 1}) → false
noTriples({1, 1, 2, 2, 1, 2, 1}) → true
noTriples({1, 2, 1}) → true
noTriples({1, 1, 1}) → false
noTriples({1, 1}) → true
noTriples({1}) → true
noTriples({}) → true
**************************************************************************************************/
package javaExample.warmup2;

public class NoTriples
{

    public static void main(String[] args)
    {
    	System.out.println(noTriples(1, 1, 2, 2, 1));
    	System.out.println(noTriples(1, 1, 2, 2, 2, 1));
    	System.out.println(noTriples(1, 1, 1, 2, 2, 2, 1));
    }

    // myCode
    public static boolean noTriples(int ... jiddi){

    	for(int i=0;i<jiddi.length;i++){
    		int end = i+2;
    		if(end < jiddi.length){
    			if(jiddi[i]==jiddi[i+1]&& jiddi[i]==jiddi[i+2])
    				return false;
    		}
    	}
    	return true;
    }

    // std
    public boolean noTriplesStd(int[] nums) {
    	  // Iterate < length-2, so can use i+1 and i+2 in the loop.
    	  // Return false immediately if every seeing a triple.
    	  for (int i=0; i < (nums.length-2); i++) {
    	    int first = nums[i];
    	    if (nums[i+1]==first && nums[i+2]==first) return false;
    	  }

    	  // If we get here ... no triples.
    	  return true;
    }


}
