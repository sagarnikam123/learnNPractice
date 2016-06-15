/**************************************************************************************************

    haveThree - solved

    Given an array of ints, return true if the value 3 appears in the array exactly 3 times, 
    and no 3's are next to each other. 
***************************************************************************************************
haveThree({3, 1, 3, 1, 3}) → true
haveThree({3, 1, 3, 3}) → false
haveThree({3, 4, 3, 3, 4}) → false
haveThree({1, 3, 1, 3, 1, 2}) → false
haveThree({1, 3, 1, 3, 1, 3}) → true
haveThree({1, 3, 3, 1, 3}) → false
haveThree({1, 3, 1, 3, 1, 3, 4, 3}) → false
haveThree({3, 4, 3, 4, 3, 4, 4}) → true
haveThree({3, 3, 3}) → false
haveThree({1, 3}) → false
haveThree({3}) → false
haveThree({1}) → false
**************************************************************************************************/
package javaExample.array2;

public class HaveThree
{

    public static void main(String[] args)
    {
    	int chendu [] = {1};
    	System.out.println(haveThree(chendu));
    }
    
    public static boolean haveThree(int[] nums) {
    	
    	int baju = 0; // countOf3
     	
     	for(int i=0;i < nums.length;i++){
     		if(nums[i]==3 && i+1<=nums.length-1){
     			baju++;
     			if(nums[i+1]==3) return false;
     		}else if(nums[i]==3){
     			baju++;
     		}
     	}
     	
     	if(baju==3){
     		return true;
     	}else{
     		return false;
     	}
     	
    }

}
