/**************************************************************************************************

    array667 - solved
    
    Given an array of ints, return the number of times that two 6's are next to each other 
    in the array. Also count instances where the second "6" is actually a 7. 
***************************************************************************************************
array667({6, 6, 2}) → 1
array667({6, 6, 2, 6}) → 1
array667({6, 7, 2, 6}) → 1
array667({6, 6, 2, 6, 7}) → 2
array667({1, 6, 3}) → 0
array667({6, 1}) → 0
array667({}) → 0
array667({3, 6, 7, 6}) → 1
array667({3, 6, 6, 7}) → 2
array667({6, 3, 6, 6}) → 1
array667({6, 7, 6, 6}) → 2
array667({1, 2, 3, 5, 6}) → 0
array667({1, 2, 3, 6, 6}) → 1
**************************************************************************************************/
package javaExample.warmup2;

public class Array667
{

    public static void main(String[] args)
    {
    	System.out.println(array667(6, 6, 2));
    	System.out.println(array667(6, 6, 2, 6));
    	System.out.println(array667(6, 7, 2, 6));
    }
    
    // my code
	private static int array667(int ... kesariya){
		int no667 = 0;
		
		for (int i = 0 ;i < kesariya.length-1;i++){
			
			if(kesariya[i]==6 && kesariya[i+1]==6){
				no667++;
			}
			if(kesariya[i]==6 && kesariya[i+1]==7){
				no667++;
			}
		}
    	return no667;
    }
	
	public static int array667Std(int[] nums) {
		  int count = 0;
		  // Note: iterate to length-1, so can use i+1 in the loop
		  for (int i=0; i < (nums.length-1); i++) {
		    if (nums[i] == 6) {
		      if (nums[i+1] == 6 || nums[i+1] == 7) {
		        count++;
		      }
		    }
		  }
		  return count;
		}

}
