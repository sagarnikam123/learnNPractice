/**************************************************************************************************

    sum67 - solved
    
    Return the sum of the numbers in the array, except ignore sections of numbers starting with a 6 
    and extending to the next 7 (every 6 will be followed by at least one 7). Return 0 for no numbers. 
***************************************************************************************************
sum67({1, 2, 2}) → 5
sum67({1, 2, 2, 6, 99, 99, 7}) → 5
sum67({1, 1, 6, 7, 2}) → 4
sum67({1, 6, 2, 2, 7, 1, 6, 99, 99, 7}) → 2
sum67({1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7}) → 2
sum67({2, 7, 6, 2, 6, 7, 2, 7}) → 18
sum67({2, 7, 6, 2, 6, 2, 7}) → 9
sum67({1, 6, 7, 7}) → 8
sum67({6, 7, 1, 6, 7, 7}) → 8
sum67({6, 8, 1, 6, 7}) → 0
sum67({}) → 0
sum67({6, 7, 11}) → 11
sum67({11, 6, 7, 11}) → 22
sum67({2, 2, 6, 7, 7}) → 11
**************************************************************************************************/
package javaExample.array2;

public class Sum67
{

    public static void main(String[] args)
    {
    	int zaraZara [] = {2, 2, 6, 7, 7};
    	System.out.println(sum67(zaraZara));
    }
    
    public static int sum67(int[] nums) {
    	
    	int vilakshan = 0;
    	
    	for(int i=0;i<nums.length;i++){
    		if(nums[i]==6){
    			for(int j=i+1;j<nums.length;j++){
    				if(nums[j]==7){
    					i=j;
    					j=nums.length;
    				}
    			}
    		}else{
    			vilakshan +=nums[i];
    		}
    	}
        return vilakshan;
    }


}
