/**************************************************************************************************

    centeredAverage - solved

    Return the "centered" average of an array of ints, which we'll say is the mean average of the
    values, except ignoring the largest and smallest values in the array. If there are multiple
    copies of the smallest value, ignore just one copy, and likewise for the largest value.
    Use int division to produce the final average. You may assume that the array is length 3 or more.
***************************************************************************************************
centeredAverage({1, 2, 3, 4, 100}) â†’ 3
centeredAverage({1, 1, 5, 5, 10, 8, 7}) â†’ 5
centeredAverage({-10, -4, -2, -4, -2, 0}) â†’ -3
centeredAverage({5, 3, 4, 6, 2}) → 4
centeredAverage({5, 3, 4, 0, 100}) → 4
centeredAverage({100, 0, 5, 3, 4}) → 4
centeredAverage({4, 0, 100}) → 4
centeredAverage({0, 2, 3, 4, 100}) → 3
centeredAverage({1, 1, 100}) → 1
centeredAverage({7, 7, 7}) → 7
centeredAverage({1, 7, 8}) → 7
centeredAverage({1, 1, 99, 99}) → 50
centeredAverage({1000, 0, 1, 99}) → 50
centeredAverage({4, 4, 4, 4, 5}) → 4
centeredAverage({4, 4, 4, 1, 5}) → 4
centeredAverage({6, 4, 8, 12, 3}) → 6
**************************************************************************************************/
package javaExample.array2;

public class CenteredAverage
{

    public static void main(String[] args)
    {
    	int kamina [] = {-10, -4, -2, -4, -2, 0};
    	System.out.println(centeredAverage(kamina));
    }

    public static int centeredAverage(int[] nums) {

    	int little = nums[0];
    	int big = nums[0];

    	//find small & large
    	for(int kajuCurry : nums){
    		if(kajuCurry > big){
    			big = kajuCurry;
    		}else if(kajuCurry < little){
    			little = kajuCurry;
    		}
    	}

    	int namuna [] = new int[nums.length-2];
    	boolean littleFinish = false;
    	boolean bigFinish = false;

    	for(int i=0,j=0;i<nums.length;i++){
    		if(nums[i]==little && littleFinish==false){
    			littleFinish = true;
    		}else if(nums[i]==big && bigFinish ==false){
    			bigFinish = true;
    		}else{
    			namuna[j] = nums[i];
    			j++;
    		}
    	}

    	int avg = 0;
    	for(int khujli : namuna){
    		avg +=khujli;
    	}

    	return avg/namuna.length;
    }

}
