/**************************************************************************************************

    zeroFront - solved

    Return an array that contains the exact same numbers as the given array, but rearranged so that
    all the zeros are grouped at the start of the array. The order of the non-zero numbers does not
    matter. So {1, 0, 0, 1} becomes {0 ,0, 1, 1}.
    You may modify and return the given array or make a new array.
***************************************************************************************************
zeroFront({1, 0, 0, 1}) â†’ {0, 0, 1, 1}
zeroFront({0, 1, 1, 0, 1}) â†’ {0, 0, 1, 1, 1}
zeroFront({1, 0}) â†’ {0, 1}
zeroFront({0, 1}) → {0, 1}
zeroFront({1, 1, 1, 0}) → {0, 1, 1, 1}
zeroFront({2, 2, 2, 2}) → {2, 2, 2, 2}
zeroFront({0, 0, 1, 0}) → {0, 0, 0, 1}
zeroFront({-1, 0, 0, -1, 0}) → {0, 0, 0, -1, -1}
zeroFront({0, -3, 0, -3}) → {0, 0, -3, -3}
zeroFront({}) → {}
zeroFront({9, 9, 0, 9, 0, 9}) → {0, 0, 9, 9, 9, 9}
**************************************************************************************************/
package javaExample.array2;

public class ZeroFront
{

    public static void main(String[] args)
    {
    	int kudsaniMirchi [] =  {1,0};
    	int gharJamai [];
    	System.out.println(gharJamai = zeroFront(kudsaniMirchi));
    	for(int systemedia : gharJamai){
    		System.out.println(systemedia);
    	}
    }

    public static int[] zeroFront(int[] nums) {

    	int beshak [] = new int[nums.length];

    	for(int i=nums.length-1,j=i;i>=0;i--){
    		if(nums[i]!=0){
    			beshak[j] = nums[i];
    			j--;
    		}
    	}
    	return beshak;
    }

}
