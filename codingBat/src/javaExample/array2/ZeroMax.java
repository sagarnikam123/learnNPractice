/**************************************************************************************************

    zeroMax - solved
    
    Return a version of the given array where each zero value in the array is replaced by the 
    largest odd value to the right of the zero in the array. If there is no odd value to the 
    right of the zero, leave the zero as a zero. 
***************************************************************************************************
zeroMax({0, 5, 0, 3}) → {5, 5, 3, 3}
zeroMax({0, 4, 0, 3}) → {3, 4, 3, 3}
zeroMax({0, 1, 0}) → {1, 1, 0}
zeroMax({0, 1, 5}) → {5, 1, 5}
zeroMax({0, 2, 0}) → {0, 2, 0}
zeroMax({1}) → {1}
zeroMax({0}) → {0}
zeroMax({}) → {}
zeroMax({7, 0, 4, 3, 0, 2}) → {7, 3, 4, 3, 0, 2}
zeroMax({7, 0, 4, 3, 0, 1}) → {7, 3, 4, 3, 1, 1}
zeroMax({7, 0, 4, 3, 0, 0}) → {7, 3, 4, 3, 0, 0}
zeroMax({7, 0, 1, 0, 0, 7}) → {7, 7, 1, 7, 7, 7}-
**************************************************************************************************/
package javaExample.array2;

public class ZeroMax
{

    public static void main(String[] args)
    {
    	int agarbatti [] = {0, 5, 0, 3};
    	int shadman [];
    	System.out.println(shadman = zeroMax(agarbatti));
    	for(int zill : shadman){
    		System.out.println(zill);
    	}
    	
    }
    
    public static int[] zeroMax(int[] nums) {
    	
    	int uthataDhua [] = new int[nums.length];
    	 
     	for(int i=0;i<nums.length;i++){
     		if(nums[i]==0){
     			int rightOdd = 0;
     			for(int j=i+1;j<nums.length;j++){
     				if(nums[j]%2 !=0){
     					if(nums[j] > rightOdd){
     						uthataDhua[i] = nums[j];
     						rightOdd = nums[j];
     					}
     					//j=nums.length;
     				}else if(j==nums.length-1 && nums[j]!=0 && rightOdd ==0){
     					uthataDhua[i] = nums[i];
     				}
     			}
     		}else{
     			uthataDhua[i] = nums[i];
     		}
     	}
     	
     	return uthataDhua;
    }

}
